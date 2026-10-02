package com.bookshop.servlet.admin.order;

import com.bookshop.beans.Order;
import com.bookshop.beans.OrderItem;
import com.bookshop.beans.Product;
import com.bookshop.service.OrderItemService;
import com.bookshop.service.OrderService;
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

@WebServlet(name = "UpdateOrderServlet", value = "/admin/orderManager/update")
public class UpdateOrderServlet extends HttpServlet {
    private final OrderService orderService = new OrderService();
    private final ProductService productService = new ProductService();
    private final OrderItemService orderItemService = new OrderItemService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Protector.of(() -> Long.parseLong(request.getParameter("id"))).get(0L);



        String action = request.getParameter("action");

        String errorMessage = "Đã có lỗi truy vấn!";

        if ("CONFIRM".equals(action))
        {
            String successMessage = String.format("Đã xác nhận đã giao đơn hàng #%s thành công!", id);

            List<OrderItem> orderItems = Protector.of(() -> orderItemService.getByOrderId(id)).get(ArrayList::new);
            for (OrderItem orderItem : orderItems)
            {
                Optional<Product> product = productService.getById(orderItem.getProductId());
                if(product.isPresent())
                {
                    Protector.of(() ->
                            {
                                product.get().setQuantity(product.get().getQuantity() - orderItem.getQuantity());
                                product.get().setTotalBuy(product.get().getTotalBuy() + orderItem.getQuantity());
                                productService.update(product.get());
                                orderService.confirm(id);
                            })
                            .done(r -> request.getSession().setAttribute("successMessage", successMessage))
                            .fail(e -> request.getSession().setAttribute("errorMessage", errorMessage));
                }
            }
        }

        if ("CANCEL".equals(action)) {
            String successMessage = String.format("Đã hủy đơn hàng #%s thành công!", id);
            Protector.of(() -> orderService.cancel(id))
                    .done(r -> request.getSession().setAttribute("successMessage", successMessage))
                    .fail(e -> request.getSession().setAttribute("errorMessage", errorMessage));
        }

        if ("RESET".equals(action)) {
            String successMessage = String.format("Đã đặt lại trạng thái là đang giao hàng cho đơn hàng #%s thành công!", id);
            Protector.of(() -> orderService.reset(id))
                    .done(r -> request.getSession().setAttribute("successMessage", successMessage))
                    .fail(e -> request.getSession().setAttribute("errorMessage", errorMessage));
        }

        response.sendRedirect(request.getContextPath() + "/admin/orderManager");
    }
}
