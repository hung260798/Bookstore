package com.bookshop.servlet.client;
import com.bookshop.beans.Category;
import com.bookshop.beans.Order;
import com.bookshop.beans.OrderItem;
import com.bookshop.beans.User;
import com.bookshop.dto.ErrorMessage;
import com.bookshop.dto.OrderRequest;
import com.bookshop.dto.OrderResponse;
import com.bookshop.dto.SuccessMessage;
import com.bookshop.service.*;
import com.bookshop.utils.JsonUtils;
import com.bookshop.utils.Protector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;
@WebServlet(name = "CheckoutServlet", value = "/checkout")
/*public class CheckoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

}*/

//@WebServlet(name = "OrderServlet", value = "/order")
public class CheckoutServlet extends HttpServlet {
    private final UserService userService = new UserService();
    private final CategoryService categoryService = new CategoryService();
    private final OrderService orderService = new OrderService();
    private final OrderItemService orderItemService = new OrderItemService();
    //private final CategoryService categoryService = new CategoryService();
    private static final int ORDERS_PER_PAGE = 3;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentUser");
        List<Category> categories = Protector.of(() -> categoryService.getPart(12, 0))
                .get(ArrayList::new);

        request.setAttribute("categories", categories);
        request.setAttribute("user", user);
        //request.getRequestDispatcher("WEB-INF/views/settingView.jsp").forward(request, response);

        request.getRequestDispatcher("/WEB-INF/views/checkoutView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentUser");

        Map<String, String> values = new HashMap<>();
        values.put("username", request.getParameter("username"));
        values.put("fullname", request.getParameter("fullname"));
        values.put("email", request.getParameter("email"));
        values.put("phoneNumber", request.getParameter("phoneNumber"));
        values.put("gender", request.getParameter("gender"));
        values.put("address", request.getParameter("address"));

        User newUser = new User(
                user.getId(),
                values.get("username"),
                user.getPassword(),
                values.get("fullname"),
                values.get("email"),
                values.get("phoneNumber"),
                Integer.parseInt(values.get("gender")),
                values.get("address"),
                "CUSTOMER"
        );

        String successMessage = "Cập nhật thành công!";
        String errorMessage = "Cập nhật không thành công!";

        Optional<User> userWithNewUsername = userService.getByUsername(values.get("username"));

        if (!user.getUsername().equals(values.get("username")) && userWithNewUsername.isPresent()) {
            request.setAttribute("errorMessage", errorMessage);
            request.setAttribute("user", user);
        } else {
            userService.update(newUser);
            request.setAttribute("successMessage", successMessage);
            request.setAttribute("user", newUser);
            request.getSession().setAttribute("currentUser", newUser);
        }
        request.getRequestDispatcher("/WEB-INF/views/checkoutView.jsp").forward(request, response);
    }


}
