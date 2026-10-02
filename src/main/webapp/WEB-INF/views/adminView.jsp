<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Trang chủ Admin</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content padding-y">--%>
<%--  <div class="container">--%>
<%--    <div class="card bg-light">--%>
<%--      <div class="card-body p-5">--%>
<%--        <h1 class="display-5 mb-5">Quản lý Bookstore</h1>--%>
<%--        <div class="row">--%>
<%--          <div class="col-6 col-lg-3">--%>
<%--            <figure class="card">--%>
<%--              <div class="p-3">--%>
<%--                <h4 class="title">${requestScope.totalUsers}</h4>--%>
<%--                <span>người dùng</span>--%>
<%--              </div>--%>
<%--            </figure>--%>
<%--          </div>--%>
<%--          <div class="col-6 col-lg-3">--%>
<%--            <figure class="card">--%>
<%--              <div class="p-3">--%>
<%--                <h4 class="title">${requestScope.totalCategories}</h4>--%>
<%--                <span>thể loại sách</span>--%>
<%--              </div>--%>
<%--            </figure>--%>
<%--          </div>--%>
<%--          <div class="col-6 col-lg-3">--%>
<%--            <figure class="card">--%>
<%--              <div class="p-3">--%>
<%--                <h4 class="title">${requestScope.totalProducts}</h4>--%>
<%--                <span>sách</span>--%>
<%--              </div>--%>
<%--            </figure>--%>
<%--          </div>--%>
<%--          <div class="col-6 col-lg-3">--%>
<%--            <figure class="card">--%>
<%--              <div class="p-3">--%>
<%--                <h4 class="title">${requestScope.totalOrders}</h4>--%>
<%--                <span>đơn hàng</span>--%>
<%--              </div>--%>
<%--            </figure>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div> <!-- card.// -->--%>
<%--  </div> <!-- container.// -->--%>
<%--</section> <!-- section-content.// -->--%>

<%--<jsp:include page="_footerAdmin.jsp"/>--%>
<%--</body>--%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang chủ</title>
  <jsp:include page="_meta.jsp"/>
<%--  <link rel="stylesheet" href="./assets/css/style.css">--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />--%>
  <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!-- SIDEBAR -->
<c:set var="servletPath" scope="page" value="${requestScope['javax.servlet.forward.servlet_path']}"/>
<section id="sidebar">
  <a href="#" class="brand">
    <i class='bx bxs-smile'></i>
    <span class="text">Admin Bookcatshop</span>
  </a>
  <ul class="side-menu top">
    <li class="active">
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
        <h1>Trang chủ</h1>
      </div>
    </div>
    <ul class="box-info">
      <li>
        <i class='bx bxs-calendar-check' ></i>
        <span class="text">
          <h3 class="title">${requestScope.totalUsers}</h3>
                <span>người dùng</span>
        </span>
      </li>
      <li>
        <i class='bx bxs-group' ></i>
        <span class="text">
          <h3 class="title">${requestScope.totalCategories}</h3>
          <span>thể loại sách</span>
        </span>
      </li>
      <li>
        <i class='bx bxs-dollar-circle' ></i>
        <span class="text">
          <h3 class="title">${requestScope.totalProducts}</h3>
        <span>sách</span>
        </span>
      </li>
      <li>
        <i class='bx bxs-dollar-circle' ></i>
        <span class="text">
          <h3 class="title">${requestScope.totalOrders}</h3>
          <span>đơn hàng</span>
        </span>
      </li>
    </ul>

  </main>
  <!-- MAIN -->
</section>
<!-- CONTENT -->

</body>
</html>
