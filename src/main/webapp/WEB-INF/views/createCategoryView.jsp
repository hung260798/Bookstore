<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Thêm thể loại</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content">--%>
<%--  <div class="container">--%>
<%--    <header class="section-heading py-4">--%>
<%--      <h3 class="section-title">Thêm thể loại</h3>--%>
<%--    </header> <!-- section-heading.// -->--%>

<%--    <main class="row mb-5">--%>
<%--      <form class="col-lg-6" method="POST" action="${pageContext.request.contextPath}/admin/categoryManager/create"--%>
<%--            enctype="multipart/form-data">--%>
<%--        <c:if test="${not empty requestScope.successMessage}">--%>
<%--          <div class="alert alert-success mb-3" role="alert">--%>
<%--              ${requestScope.successMessage}--%>
<%--          </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${not empty requestScope.errorMessage}">--%>
<%--          <div class="alert alert-danger mb-3" role="alert">--%>
<%--              ${requestScope.errorMessage}--%>
<%--          </div>--%>
<%--        </c:if>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="category-name" class="form-label">Tên thể loại <span class="text-danger">*</span></label>--%>
<%--          <input type="text"--%>
<%--                 class="form-control ${not empty requestScope.violations.nameViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.category.name ? 'is-valid' : '')}"--%>
<%--                 id="category-name"--%>
<%--                 name="name"--%>
<%--                 value="${requestScope.category.name}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.nameViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.nameViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="category-description" class="form-label">Mô tả thể loại</label>--%>
<%--          <textarea class="form-control ${not empty requestScope.violations.descriptionViolations--%>
<%--                      ? 'is-invalid' : (not empty requestScope.category.description ? 'is-valid' : '')}"--%>
<%--                    id="category-description"--%>
<%--                    rows="5"--%>
<%--                    name="description">${requestScope.category.description}</textarea>--%>
<%--          <c:if test="${not empty requestScope.violations.descriptionViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.descriptionViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="category-imageName" class="form-label">Hình thể loại</label>--%>
<%--          <input type="file"--%>
<%--                 class="form-control"--%>
<%--                 id="category-imageName"--%>
<%--                 name="image"--%>
<%--                 accept="image/*">--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary me-2 mb-3">--%>
<%--          Thêm--%>
<%--        </button>--%>
<%--        <button type="reset"--%>
<%--                class="btn btn-warning me-2 mb-3"--%>
<%--                onclick="return confirm('Bạn có muốn để giá trị mặc định?')">--%>
<%--          Mặc định--%>
<%--        </button>--%>
<%--        <a class="btn btn-danger mb-3"--%>
<%--           href="${pageContext.request.contextPath}/admin/categoryManager"--%>
<%--           role="button"--%>
<%--           onclick="return confirm('Bạn có muốn hủy?')">--%>
<%--          Hủy--%>
<%--        </a>--%>
<%--      </form>--%>
<%--    </main>--%>
<%--  </div> <!-- container.// -->--%>
<%--</section> <!-- section-content.// -->--%>

<%--<jsp:include page="_footerAdmin.jsp"/>--%>
<%--</body>--%>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thêm thể loại</title>
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
    <li class="active">
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
        <h1>Thêm thể loại</h1>
      </div>
    </div>
    <section class="section-content">
      <div class="container">
<%--        <header class="section-heading py-4">--%>
<%--          <h3 class="section-title">Thêm thể loại</h3>--%>
<%--        </header> <!-- section-heading.// -->--%>

<%--        <main class="row mb-5">--%>
          <form class="col-lg-6" method="POST" action="${pageContext.request.contextPath}/admin/categoryManager/create"
                enctype="multipart/form-data">
            <c:if test="${not empty requestScope.successMessage}">
              <div class="alert alert-success mb-3" role="alert">
                  ${requestScope.successMessage}
              </div>
            </c:if>
            <c:if test="${not empty requestScope.errorMessage}">
              <div class="alert alert-danger mb-3" role="alert">
                  ${requestScope.errorMessage}
              </div>
            </c:if>
            <div class="mb-3">
              <label for="category-name" class="form-label">Tên thể loại <span class="text-danger">*</span></label>
              <input type="text"
                     class="form-control ${not empty requestScope.violations.nameViolations
                       ? 'is-invalid' : (not empty requestScope.category.name ? 'is-valid' : '')}"
                     id="category-name"
                     name="name"
                     value="${requestScope.category.name}"
                     required>
              <c:if test="${not empty requestScope.violations.nameViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.nameViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="category-description" class="form-label">Mô tả thể loại</label>
              <textarea class="form-control ${not empty requestScope.violations.descriptionViolations
                          ? 'is-invalid' : (not empty requestScope.category.description ? 'is-valid' : '')}"
                        id="category-description"
                        rows="5"
                        name="description">${requestScope.category.description}</textarea>
              <c:if test="${not empty requestScope.violations.descriptionViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.descriptionViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="category-imageName" class="form-label">Hình thể loại</label>
              <input type="file"
                     class="form-control"
                     id="category-imageName"
                     name="image"
                     accept="image/*">
            </div>
            <button type="submit" class="btn btn-primary me-2 mb-3">
              Thêm
            </button>
<%--            <button type="reset"--%>
<%--                    class="btn btn-warning me-2 mb-3"--%>
<%--                    onclick="return confirm('Bạn có muốn để giá trị mặc định?')">--%>
<%--              Mặc định--%>
<%--            </button>--%>
            <a class="btn btn-danger mb-3"
               href="${pageContext.request.contextPath}/admin/categoryManager"
               role="button"
               onclick="return confirm('Bạn có muốn hủy?')">
              Hủy
            </a>
          </form>
<%--        </main>--%>
      </div> <!-- container.// -->
    </section> <!-- section-content.// -->


  </main>
  <!-- MAIN -->
</section>
</body>
</html>
