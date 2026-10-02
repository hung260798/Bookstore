package com.bookshop.servlet.client;

import com.bookshop.beans.Category;
import com.bookshop.beans.User;
import com.bookshop.service.CategoryService;
import com.bookshop.service.UserService;
import com.bookshop.utils.HashingUtils;
import com.bookshop.utils.Protector;
import com.bookshop.utils.Validator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "SigninServlet", value = "/signin")
public class SigninServlet extends HttpServlet {
    private final UserService userService = new UserService();
    private final CategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = Protector.of(() -> categoryService.getPart(12, 0))
                .get(ArrayList::new);

        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/WEB-INF/views/signinView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> values = new HashMap<>();
        values.put("username", request.getParameter("username"));
        values.put("password", request.getParameter("password"));

        Map<String, List<String>> violations = new HashMap<>();
        Optional<User> userFromServer = Protector.of(() -> userService.getByUsername(values.get("username")))
                .get(Optional::empty);
        violations.put("usernameViolations", Validator.of(values.get("username"))
                .isNotNullAndEmpty()
                .isNotBlankAtBothEnds()
                .isAtMostOfLength(25)
                .isExistent(userFromServer.isPresent(), "Tên đăng nhập")
                .toList());
        violations.put("passwordViolations", Validator.of(values.get("password"))
                .isNotNullAndEmpty()
                .isNotBlankAtBothEnds()
                .isAtMostOfLength(32)
                .changeTo(HashingUtils.hash(values.get("password")))
                .isEqualTo(userFromServer.map(User::getPassword).orElse(""), "Mật khẩu")
                .toList());

        int sumOfViolations = violations.values().stream().mapToInt(List::size).sum();

        if (sumOfViolations == 0 && userFromServer.isPresent()) {
            request.getSession().setAttribute("currentUser", userFromServer.get());
            response.sendRedirect(request.getContextPath() + "/");
        } else {
            request.setAttribute("values", values);
            request.setAttribute("violations", violations);
            request.getRequestDispatcher("/WEB-INF/views/signinView.jsp").forward(request, response);
        }
    }
}
