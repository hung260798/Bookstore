<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Thông tin sản phẩm #${requestScope.product.id}</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content">--%>
<%--  <div class="container">--%>
<%--    <header class="section-heading py-4">--%>
<%--      <h3 class="section-title">Thông tin sản phẩm</h3>--%>
<%--    </header> <!-- section-heading.// -->--%>

<%--    <div class="card mb-5">--%>
<%--      <div class="card-body">--%>
<%--        <dl class="row">--%>
<%--          <dt class="col-md-3">ID</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.id}</dd>--%>

<%--          <dt class="col-md-3">Tên sản phẩm</dt>--%>
<%--          <dd class="col-md-9">--%>
<%--            <a href="${pageContext.request.contextPath}/product?id=${requestScope.product.id}" target="_blank">--%>
<%--              ${requestScope.product.name}--%>
<%--            </a>--%>
<%--          </dd>--%>

<%--          <dt class="col-md-3">Thể loại</dt>--%>
<%--          <dd class="col-md-9">--%>
<%--            <a href="${pageContext.request.contextPath}/category?id=${requestScope.category.id}" target="_blank">--%>
<%--              ${requestScope.category.name}--%>
<%--            </a>--%>
<%--          </dd>--%>

<%--          <dt class="col-md-3">Giá gốc</dt>--%>
<%--          <dd class="col-md-9"><fmt:formatNumber pattern="#,##0" value="${requestScope.product.price}"/>₫</dd>--%>

<%--          <dt class="col-md-3">Khuyến mãi</dt>--%>
<%--          <dd class="col-md-9"><fmt:formatNumber pattern="#,##0" value="${requestScope.product.discount}"/>%</dd>--%>

<%--          <dt class="col-md-3">Giá bán</dt>--%>
<%--          <dd class="col-md-9">--%>
<%--            <c:choose>--%>
<%--              <c:when test="${requestScope.product.discount == 0}">--%>
<%--                <fmt:formatNumber pattern="#,##0" value="${requestScope.product.price}"/>₫--%>
<%--              </c:when>--%>
<%--              <c:otherwise>--%>
<%--                <fmt:formatNumber--%>
<%--                        pattern="#,##0"--%>
<%--                        value="${requestScope.product.price * (100 - requestScope.product.discount) / 100}"/>₫--%>
<%--              </c:otherwise>--%>
<%--            </c:choose>--%>
<%--          </dd>--%>

<%--          <dt class="col-md-3">Tồn kho</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.quantity}</dd>--%>

<%--          <dt class="col-md-3">Lượt mua</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.totalBuy}</dd>--%>

<%--          <dt class="col-md-3">Tác giả</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.author}</dd>--%>

<%--          <dt class="col-md-3">Số trang</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.pages}</dd>--%>

<%--          <dt class="col-md-3">Nhà xuất bản</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.publisher}</dd>--%>

<%--          <dt class="col-md-3">Năm xuất bản</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.yearPublishing}</dd>--%>

<%--          <dt class="col-md-3">Mô tả sản phẩm</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.description}</dd>--%>

<%--          <dt class="col-md-3">Hình sản phẩm</dt>--%>
<%--          <dd class="col-md-9">--%>
<%--            <c:choose>--%>
<%--              <c:when test="${empty requestScope.product.imageName}">--%>
<%--                <img width="280"--%>
<%--                     class="img-thumbnail"--%>
<%--                     src="${pageContext.request.contextPath}/img/280px.png"--%>
<%--                     alt="280px.png">--%>
<%--              </c:when>--%>
<%--              <c:otherwise>--%>
<%--                <img width="280"--%>
<%--                     class="img-thumbnail"--%>
<%--                     src="${pageContext.request.contextPath}/image/${requestScope.product.imageName}"--%>
<%--                     alt="${requestScope.product.imageName}">--%>
<%--              </c:otherwise>--%>
<%--            </c:choose>--%>
<%--          </dd>--%>

<%--          <dt class="col-md-3">Được giao dịch?</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.shop == 0 ? 'Không' : 'Có'}</dd>--%>

<%--          <dt class="col-md-3">Ngày tạo</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.createdAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>--%>

<%--          <dt class="col-md-3">Ngày cập nhật</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.updatedAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>--%>

<%--          <dt class="col-md-3">Ngày bắt đầu khuyến mãi</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.startsAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>--%>

<%--          <dt class="col-md-3">Ngày kết thúc khuyến mãi</dt>--%>
<%--          <dd class="col-md-9">${requestScope.product.endsAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>--%>
<%--        </dl>--%>
<%--      </div>--%>
<%--    </div> <!-- card.// -->--%>
<%--  </div> <!-- container.// -->--%>
<%--</section> <!-- section-content.// -->--%>

<%--<jsp:include page="_footerAdmin.jsp"/>--%>
<%--</body>--%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin sản phẩm</title>
    <jsp:include page="_meta.jsp"/>
    <%--  <link rel="stylesheet" href="./assets/css/style.css">--%>
    <%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />--%>
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
<c:set var="servletPath" scope="page" value="${requestScope['javax.servlet.forward.servlet_path']}"/>
<section id="sidebar">
    <a href="#" class="brand">
        <i class='bx bxs-smile'></i>
        <span class="text">Admin Bookcatshop</span>
    </a>
    <ul class="side-menu top">
        <li>
            <a class="nav-link ${fn:startsWith(servletPath, '/admin') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin">
                <i class='bx bxs-dashboard' ></i>
                <span class="text">Trang chủ</span>
            </a>
        </li>
        <li>
            <a class="nav-link ${fn:startsWith(servletPath, '/admin/userManager') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin/userManager">
                <i class='bx bxs-shopping-bag-alt' ></i>
                <span class="text">Quản lí người dùng</span>
            </a>
        </li>
        <li>
            <a class="nav-link ${fn:startsWith(servletPath, '/admin/categoryManager') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin/categoryManager">
                <i class='bx bxs-doughnut-chart' ></i>
                <span class="text">Quản lí thể loại</span>
            </a>
        </li>
        <li class="active">
            <a class="nav-link ${fn:startsWith(servletPath, '/admin/productManager') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin/productManager">
                <i class='bx bxs-message-dots' ></i>
                <span class="text">Quản lí sản phẩm</span>
            </a>
        </li>
        <li>
            <a class="nav-link ${fn:startsWith(servletPath, '/admin/reviewManager') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin/reviewManager">
                <i class='bx bxs-group' ></i>
                <span class="text">Quản lí đánh giá</span>
            </a>
        </li>
        <li>
            <a class="nav-link ${fn:startsWith(servletPath, '/admin/orderManager') ? 'active' : ''}"
               href="${pageContext.request.contextPath}/admin/orderManager">
                <i class='bx bxs-cog' ></i>
                <span class="text">Quản lí đơn hàng</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/admin/signin" class="logout">
                <i class='bx bxs-log-out-circle' ></i>
                <span class="text">Đăng xuất</span>
            </a>
        </li>
    </ul>
</section>
<!-- SIDEBAR -->

<!-- CONTENT -->
<section id="content">
    <!-- NAVBAR -->
    <nav>
        <div class="col py-3">

        </div>
        <div class="col-sm-1">
            <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
                <li>
                    <a href="${pageContext.request.contextPath}/" class="nav-link text-body" target="_blank">
                        <i class="bi bi-window d-block text-center fs-3"></i>
                        Client
                    </a>
                </li>
            </ul>
        </div>

    </nav>
    <!-- NAVBAR -->

    <!-- MAIN -->
    <main>
        <div class="head-title">
            <div class="left">
                <h1>Thông tin sản phẩm</h1>
            </div>
        </div>
        <section class="section-content">
          <div class="container">
<%--            <header class="section-heading py-4">--%>
<%--              <h3 class="section-title">Thông tin sản phẩm</h3>--%>
<%--            </header> <!-- section-heading.// -->--%>

            <div class="card mb-5">
              <div class="card-body">
                <dl class="row">
                  <dt class="col-md-3">ID</dt>
                  <dd class="col-md-9">${requestScope.product.id}</dd>

                  <dt class="col-md-3">Tên sản phẩm</dt>
                  <dd class="col-md-9">
                    <a href="${pageContext.request.contextPath}/product?id=${requestScope.product.id}" target="_blank">
                      ${requestScope.product.name}
                    </a>
                  </dd>

                  <dt class="col-md-3">Thể loại</dt>
                  <dd class="col-md-9">
                    <a href="${pageContext.request.contextPath}/category?id=${requestScope.category.id}" target="_blank">
                      ${requestScope.category.name}
                    </a>
                  </dd>

                  <dt class="col-md-3">Giá gốc</dt>
                  <dd class="col-md-9"><fmt:formatNumber pattern="#,##0" value="${requestScope.product.price}"/>₫</dd>

                  <dt class="col-md-3">Khuyến mãi</dt>
                  <dd class="col-md-9"><fmt:formatNumber pattern="#,##0" value="${requestScope.product.discount}"/>%</dd>

                  <dt class="col-md-3">Giá bán</dt>
                  <dd class="col-md-9">
                    <c:choose>
                      <c:when test="${requestScope.product.discount == 0}">
                        <fmt:formatNumber pattern="#,##0" value="${requestScope.product.price}"/>₫
                      </c:when>
                      <c:otherwise>
                        <fmt:formatNumber
                                pattern="#,##0"
                                value="${requestScope.product.price * (100 - requestScope.product.discount) / 100}"/>₫
                      </c:otherwise>
                    </c:choose>
                  </dd>

                  <dt class="col-md-3">Tồn kho</dt>
                  <dd class="col-md-9">${requestScope.product.quantity}</dd>

                  <dt class="col-md-3">Lượt mua</dt>
                  <dd class="col-md-9">${requestScope.product.totalBuy}</dd>

                  <dt class="col-md-3">Tác giả</dt>
                  <dd class="col-md-9">${requestScope.product.author}</dd>

                  <dt class="col-md-3">Số trang</dt>
                  <dd class="col-md-9">${requestScope.product.pages}</dd>

                  <dt class="col-md-3">Nhà xuất bản</dt>
                  <dd class="col-md-9">${requestScope.product.publisher}</dd>

                  <dt class="col-md-3">Năm xuất bản</dt>
                  <dd class="col-md-9">${requestScope.product.yearPublishing}</dd>

                  <dt class="col-md-3">Mô tả sản phẩm</dt>
                  <dd class="col-md-9">${requestScope.product.description}</dd>

                  <dt class="col-md-3">Hình sản phẩm</dt>
                  <dd class="col-md-9">
                    <c:choose>
                      <c:when test="${empty requestScope.product.imageName}">
                        <img width="280"
                             class="img-thumbnail"
                             src="${pageContext.request.contextPath}/img/280px.png"
                             alt="280px.png">
                      </c:when>
                      <c:otherwise>
                        <img width="280"
                             class="img-thumbnail"
                             src="${pageContext.request.contextPath}/image/${requestScope.product.imageName}"
                             alt="${requestScope.product.imageName}">
                      </c:otherwise>
                    </c:choose>
                  </dd>

                  <dt class="col-md-3">Được giao dịch?</dt>
                  <dd class="col-md-9">${requestScope.product.shop == 0 ? 'Không' : 'Có'}</dd>

                  <dt class="col-md-3">Ngày tạo</dt>
                  <dd class="col-md-9">${requestScope.product.createdAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>

                  <dt class="col-md-3">Ngày cập nhật</dt>
                  <dd class="col-md-9">${requestScope.product.updatedAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>

                  <dt class="col-md-3">Ngày bắt đầu khuyến mãi</dt>
                  <dd class="col-md-9">${requestScope.product.startsAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>

                  <dt class="col-md-3">Ngày kết thúc khuyến mãi</dt>
                  <dd class="col-md-9">${requestScope.product.endsAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</dd>
                </dl>
              </div>
            </div> <!-- card.// -->
          </div> <!-- container.// -->
        </section> <!-- section-content.// -->


    </main>
    <!-- MAIN -->
</section>
</body>

</html>
