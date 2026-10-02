package com.bookshop.servlet.client;

import com.bookshop.beans.Category;
import com.bookshop.beans.Product;
import com.bookshop.service.CategoryService;
import com.bookshop.service.ProductService;
import com.bookshop.utils.Protector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AllProductServlet", value = "/allproduct")
public class AllProductServlet extends HttpServlet {
    private final CategoryService categoryService = new CategoryService();
    private final ProductService productService = new ProductService();

    private static final int PRODUCTS_PER_PAGE = 24;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Category> categories = Protector.of(() -> categoryService.getPart(12, 0))
                .get(ArrayList::new);

        int totalProducts = Protector.of(productService::count).get(0);

        // Tính tổng số trang (= tổng số sản phẩm / số sản phẩm trên mỗi trang)
        int totalPages = totalProducts / PRODUCTS_PER_PAGE + (totalProducts % PRODUCTS_PER_PAGE != 0 ? 1 : 0);

        // Lấy trang hiện tại, gặp ngoại lệ (chuỗi không phải số, nhỏ hơn 1, lớn hơn tổng số trang) thì gán bằng 1
        String pageParam = Optional.ofNullable(request.getParameter("page")).orElse("1");
        int page = Protector.of(() -> Integer.parseInt(pageParam)).get(1);
        if (page < 1 || page > totalPages) {
            page = 1;
        }

        // Tính mốc truy vấn (offset)
        int offset = (page - 1) * PRODUCTS_PER_PAGE;

        List<Product> products = Protector.of(() -> productService.getOrderedPart(
                PRODUCTS_PER_PAGE, offset, "id", "DESC"
        )).get(ArrayList::new);

        request.setAttribute("page", page);
        request.setAttribute("categories", categories);
        request.setAttribute("products", products);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("/WEB-INF/views/allProductView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

}
