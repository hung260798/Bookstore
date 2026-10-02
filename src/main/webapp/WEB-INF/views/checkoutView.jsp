<%--
  Created by IntelliJ IDEA.
  User: MSI PC
  Date: 5/16/2024
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_meta.jsp"/>
    <title>Checkout</title>
    <script src="${pageContext.request.contextPath}/js/toast.js" type="module"></script>
    <script src="${pageContext.request.contextPath}/js/order.js" type="module"></script>

</head>

<body>
<jsp:include page="_header.jsp"/>

<section class="section-pagetop bg-light">
    <div class="container">
        <h2 class="title-page">Check out</h2>
    </div> <!-- container.// -->
</section> <!-- section-pagetop.// -->
<c:set var="servletPath" scope="page" value="${requestScope['javax.servlet.forward.servlet_path']}"/>
<section class="section-content padding-y">
<%--    <div class="container">--%>
<%--        <form class="col-lg-6" method="POST" action="${pageContext.request.contextPath}/admin/userManager/create">--%>

<%--            <div class="mb-3">--%>
<%--                <label for="user-username" class="form-label">Tên người nhận<span class="text-danger">*</span></label>--%>
<%--                <input type="text"--%>
<%--                       class="form-control ${not empty requestScope.violations.usernameViolations--%>
<%--                       ? 'is-invalid' : (not empty requestScope.user.username ? 'is-valid' : '')}"--%>
<%--                       id="user-username"--%>
<%--                       name="username"--%>
<%--                       value="${requestScope.user.username}"--%>
<%--                       required>--%>
<%--                <c:if test="${not empty requestScope.violations.usernameViolations}">--%>
<%--                    <div class="invalid-feedback">--%>
<%--                        <ul class="list-unstyled">--%>
<%--                            <c:forEach var="violation" items="${requestScope.violations.usernameViolations}">--%>
<%--                                <li>${violation}</li>--%>
<%--                            </c:forEach>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label for="user-password" class="form-label">Địa chỉ nhận hàng <span class="text-danger">*</span></label>--%>
<%--                <input type="password"--%>
<%--                       class="form-control ${not empty requestScope.violations.passwordViolations--%>
<%--                       ? 'is-invalid' : (not empty requestScope.user.password ? 'is-valid' : '')}"--%>
<%--                       id="user-password"--%>
<%--                       name="password"--%>
<%--                       value="${requestScope.user.password}"--%>
<%--                       required>--%>
<%--                <c:if test="${not empty requestScope.violations.passwordViolations}">--%>
<%--                    <div class="invalid-feedback">--%>
<%--                        <ul class="list-unstyled">--%>
<%--                            <c:forEach var="violation" items="${requestScope.violations.passwordViolations}">--%>
<%--                                <li>${violation}</li>--%>
<%--                            </c:forEach>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label for="user-fullname" class="form-label">Số điện thoại<span class="text-danger">*</span></label>--%>
<%--                <input type="text"--%>
<%--                       class="form-control ${not empty requestScope.violations.fullnameViolations--%>
<%--                       ? 'is-invalid' : (not empty requestScope.user.fullname ? 'is-valid' : '')}"--%>
<%--                       id="user-fullname"--%>
<%--                       name="fullname"--%>
<%--                       value="${requestScope.user.fullname}"--%>
<%--                       required>--%>
<%--                <c:if test="${not empty requestScope.violations.fullnameViolations}">--%>
<%--                    <div class="invalid-feedback">--%>
<%--                        <ul class="list-unstyled">--%>
<%--                            <c:forEach var="violation" items="${requestScope.violations.fullnameViolations}">--%>
<%--                                <li>${violation}</li>--%>
<%--                            </c:forEach>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-primary me-2 mb-3">--%>
<%--                Thanh toán--%>
<%--            </button>--%>
<%--        </form>--%>
<%--        &lt;%&ndash;        </main>&ndash;%&gt;--%>
<%--    </div> <!-- container.// -->--%>


    <div class="container">
        <div class="row">
            <c:choose>
                <c:when test="${empty sessionScope.currentUser}">
                    <p>
                        Vui lòng <a href="${pageContext.request.contextPath}/signin">đăng nhập</a> để sử dụng chức năng thiết đặt.
                    </p>
                </c:when>
                <c:otherwise>
<%--                    <jsp:include page="_navPanel.jsp">--%>
<%--                        <jsp:param name="active" value="SETTING"/>--%>
<%--                    </jsp:include>--%>

                    <main class="col-md-9">
                        <article class="card">
                            <div class="card-body">
                                <c:if test="${not empty requestScope.successMessage}">
                                    <div class="alert alert-success" role="alert">${requestScope.successMessage}</div>
                                </c:if>
                                <c:if test="${not empty requestScope.errorMessage}">
                                    <div class="alert alert-danger" role="alert">${requestScope.errorMessage}</div>
                                </c:if>
                                <div class="col-lg-6">
                                    <form action="${pageContext.request.contextPath}/checkout" method="post">
                                        <div class="mb-3" style="display: none;">
                                            <label for="inputUsername" class="form-label">Tên đăng nhập</label>
                                            <input type="text"
                                                   class="form-control"
                                                   id="inputUsername"
                                                   name="username"
                                                   value="${requestScope.user.username}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="inputFullname" class="form-label">Họ và tên</label>
                                            <input type="text"
                                                   class="form-control"
                                                   id="inputFullname"
                                                   name="fullname"
                                                   value="${requestScope.user.fullname}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="inputEmail" class="form-label">Email</label>
                                            <input type="email"
                                                   class="form-control"
                                                   id="inputEmail"
                                                   name="email"
                                                   value="${requestScope.user.email}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="inputPhoneNumber" class="form-label">Số điện thoại</label>
                                            <input type="text"
                                                   class="form-control"
                                                   id="inputPhoneNumber"
                                                   name="phoneNumber"
                                                   value="${requestScope.user.phoneNumber}">
                                        </div>
                                        <div class="mb-3" style="display: none;">
                                            <div class="form-check d-inline-block me-4">
                                                <input class="form-check-input"
                                                       type="radio"
                                                       name="gender"
                                                       id="radioGender1"
                                                       value="0"
                                                    ${requestScope.user.gender == 0 ? 'checked' : ''}>
                                                <label class="form-check-label" for="radioGender1">Nam</label>
                                            </div>
                                            <div class="form-check d-inline-block">
                                                <input class="form-check-input"
                                                       type="radio"
                                                       name="gender"
                                                       id="radioGender2"
                                                       value="1"
                                                    ${requestScope.user.gender == 1 ? 'checked' : ''}>
                                                <label class="form-check-label" for="radioGender2">Nữ</label>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="inputAddress" class="form-label">Địa chỉ</label>
                                            <input type="text"
                                                   class="form-control"
                                                   id="inputAddress"
                                                   name="address"
                                                   value="${requestScope.user.address}">
                                        </div>
                                        <button type="submit" class="btn btn-primary w-100">Cập nhật thông tin mới</button>
                                    </form>
<%--                                    <button type="button" class="btn btn-primary float-end" id="checkoutBtn" disabled>Đặt hàng</button>--%>
                                </div>
                            </div> <!-- card-body.// -->
                        </article>
                    </main> <!-- col.// -->
                </c:otherwise>
            </c:choose>
        </div> <!-- row.// -->

        <div class="row" >
            <main class="col-md-9">

                <div class="card" style="padding: 12px 16px 12px 16px">
                    <p class="card-title">Hình thức giao hàng</p>
                    <form>
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="radio" name="delivery-method"
                                   id="delivery-method-1" value="1" disabled>
                            <label class="form-check-label" for="delivery-method-1">Giao tiêu chuẩn</label>
                        </div>
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="radio" name="delivery-method"
                                   id="delivery-method-2" value="2" disabled>
                            <label class="form-check-label" for="delivery-method-2">Giao nhanh</label>
                        </div>
                    </form>
                </div>
            </main>

        </div>


        <div class="row">

            <c:choose>
                <c:when test="${empty sessionScope.currentUser}">
                    <p>
                        Vui lòng <a href="${pageContext.request.contextPath}/signin">đăng nhập</a> để sử dụng chức năng giỏ hàng.
                    </p>
                </c:when>
                <c:otherwise>
                    <main class="col-lg-9 mb-lg-0 mb-3">
                        <div class="card">

                            <div id="cart-table"></div>

                            <div class="card-body border-top">

                                    <%--                <a href="${pageContext.request.contextPath}/checkout" class="btn btn-light">Đặt hàng</a>--%>

<%--                                <button type="button" class="btn btn-primary float-end" id="checkoutBtn" disabled>Đặt hàng</button>--%>

<%--                                <a href="${pageContext.request.contextPath}/" class="btn btn-light">Tiếp tục mua sắm</a>--%>
                            </div> <!-- card-body.// -->

                        </div> <!-- card.// -->
                    </main> <!-- col.// -->

                    <aside class="col-lg-3">

<%--                        <div class="card mb-3">--%>
<%--                            <div class="card-body">--%>
<%--                                <p class="card-title">Hình thức giao hàng</p>--%>
<%--                                <form>--%>
<%--                                    <div class="form-check mb-2">--%>
<%--                                        <input class="form-check-input" type="radio" name="delivery-method"--%>
<%--                                               id="delivery-method-1" value="1" disabled>--%>
<%--                                        <label class="form-check-label" for="delivery-method-1">Giao tiêu chuẩn</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check mb-2">--%>
<%--                                        <input class="form-check-input" type="radio" name="delivery-method"--%>
<%--                                               id="delivery-method-2" value="2" disabled>--%>
<%--                                        <label class="form-check-label" for="delivery-method-2">Giao nhanh</label>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div> <!-- card-body.// -->--%>
<%--                        </div> <!-- card.// -->--%>

<%--                        <div class="card">--%>
<%--                            <div class="card-body">--%>
<%--                                <dl class="row mb-0">--%>
<%--                                    <dt class="col-xxl-6 col-lg-12 col-6">Tạm tính:</dt>--%>
<%--                                    <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><span id="temp-price">0</span>₫</dd>--%>
<%--                                    <dt class="col-xxl-6 col-lg-12 col-6">Phí vận chuyển:</dt>--%>
<%--                                    <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><span id="delivery-price">0</span>₫</dd>--%>
<%--                                    <dt class="col-xxl-6 col-lg-12 col-6">Tổng cộng:</dt>--%>
<%--                                    <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><strong><span id="total-price">0</span>₫</strong></dd>--%>
<%--                                </dl>--%>
<%--                            </div> <!-- card-body.// -->--%>
<%--                        </div> <!-- card.// -->--%>

                    </aside> <!-- col.// -->
                </c:otherwise>
            </c:choose>

        </div> <!-- row.// -->

        <div class="row">
            <main class="col-md-9">
                <div class="card"  style="padding: 12px 16px 12px 16px">
                    <dl class="row mb-0">
                        <dt class="col-xxl-6 col-lg-12 col-6">Tạm tính:</dt>
                        <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><span id="temp-price">0</span>₫</dd>
                        <dt class="col-xxl-6 col-lg-12 col-6">Phí vận chuyển:</dt>
                        <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><span id="delivery-price">0</span>₫</dd>
                        <dt class="col-xxl-6 col-lg-12 col-6">Tổng cộng:</dt>
                        <dd class="col-xxl-6 col-lg-12 col-6 text-end mb-3"><strong><span id="total-price">0</span>₫</strong></dd>
                    </dl>
                    <div class="card-body border-top">

                        <%--                <a href="${pageContext.request.contextPath}/checkout" class="btn btn-light">Đặt hàng</a>--%>

                                                        <button type="button" class="btn btn-primary float-end" id="checkoutBtn" disabled>Đặt hàng</button>

                        <%--                                <a href="${pageContext.request.contextPath}/" class="btn btn-light">Tiếp tục mua sắm</a>--%>
                    </div> <!-- card-body.// -->
                </div>
            </main>

        </div>

    </div> <!-- container.// -->
</section> <!-- section-content.// -->

<jsp:include page="_footer.jsp"/>

<div class="toast-container position-fixed bottom-0 start-0 p-3"></div> <!-- toast-container.// -->

</body>

</html>

