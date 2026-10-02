<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Thông tin người dùng #${requestScope.user.id}</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content">--%>
<%--  <div class="container">--%>
<%--    <header class="section-heading py-4">--%>
<%--      <h3 class="section-title">Thông tin người dùng</h3>--%>
<%--    </header> <!-- section-heading.// -->--%>

<%--    <div class="card mb-5">--%>
<%--      <div class="card-body">--%>
<%--        <dl class="row">--%>
<%--          <dt class="col-md-3">ID</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.id}</dd>--%>

<%--          <dt class="col-md-3">Tên đăng nhập</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.username}</dd>--%>

<%--          <dt class="col-md-3">Họ và tên</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.fullname}</dd>--%>

<%--          <dt class="col-md-3">Email</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.email}</dd>--%>

<%--          <dt class="col-md-3">Số điện thoại</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.phoneNumber}</dd>--%>

<%--          <dt class="col-md-3">Giới tính</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.gender == 0 ? 'Nam' : 'Nữ'}</dd>--%>

<%--          <dt class="col-md-3">Địa chỉ</dt>--%>
<%--          <dd class="col-md-9">${requestScope.user.address}</dd>--%>
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
  <title>Thông tin người dùng</title>
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
    <li class="active">
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
    <li>
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
        <h1>Thông tin người dùng</h1>
      </div>
    </div>
    <section class="section-content">
      <div class="container">
<%--        <header class="section-heading py-4">--%>
<%--          <h3 class="section-title">Thông tin người dùng</h3>--%>
<%--        </header> <!-- section-heading.// -->--%>

        <div class="card mb-5">
          <div class="card-body">
            <dl class="row">
              <dt class="col-md-3">ID</dt>
              <dd class="col-md-9">${requestScope.user.id}</dd>

              <dt class="col-md-3">Tên đăng nhập</dt>
              <dd class="col-md-9">${requestScope.user.username}</dd>

              <dt class="col-md-3">Họ và tên</dt>
              <dd class="col-md-9">${requestScope.user.fullname}</dd>

              <dt class="col-md-3">Email</dt>
              <dd class="col-md-9">${requestScope.user.email}</dd>

              <dt class="col-md-3">Số điện thoại</dt>
              <dd class="col-md-9">${requestScope.user.phoneNumber}</dd>

              <dt class="col-md-3">Giới tính</dt>
              <dd class="col-md-9">${requestScope.user.gender == 0 ? 'Nam' : 'Nữ'}</dd>

              <dt class="col-md-3">Địa chỉ</dt>
              <dd class="col-md-9">${requestScope.user.address}</dd>
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
