<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Thêm người dùng</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content">--%>
<%--  <div class="container">--%>
<%--    <header class="section-heading py-4">--%>
<%--      <h3 class="section-title">Thêm người dùng</h3>--%>
<%--    </header> <!-- section-heading.// -->--%>

<%--    <main class="row mb-5">--%>
<%--      <form class="col-lg-6" method="POST" action="${pageContext.request.contextPath}/admin/userManager/create">--%>
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
<%--          <label for="user-username" class="form-label">Tên đăng nhập <span class="text-danger">*</span></label>--%>
<%--          <input type="text"--%>
<%--                 class="form-control ${not empty requestScope.violations.usernameViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.username ? 'is-valid' : '')}"--%>
<%--                 id="user-username"--%>
<%--                 name="username"--%>
<%--                 value="${requestScope.user.username}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.usernameViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.usernameViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-password" class="form-label">Mật khẩu <span class="text-danger">*</span></label>--%>
<%--          <input type="password"--%>
<%--                 class="form-control ${not empty requestScope.violations.passwordViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.password ? 'is-valid' : '')}"--%>
<%--                 id="user-password"--%>
<%--                 name="password"--%>
<%--                 value="${requestScope.user.password}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.passwordViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.passwordViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-fullname" class="form-label">Họ và tên <span class="text-danger">*</span></label>--%>
<%--          <input type="text"--%>
<%--                 class="form-control ${not empty requestScope.violations.fullnameViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.fullname ? 'is-valid' : '')}"--%>
<%--                 id="user-fullname"--%>
<%--                 name="fullname"--%>
<%--                 value="${requestScope.user.fullname}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.fullnameViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.fullnameViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-email" class="form-label">Email <span class="text-danger">*</span></label>--%>
<%--          <input type="email"--%>
<%--                 class="form-control ${not empty requestScope.violations.emailViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.email ? 'is-valid' : '')}"--%>
<%--                 id="user-email"--%>
<%--                 name="email"--%>
<%--                 value="${requestScope.user.email}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.emailViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.emailViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-phoneNumber" class="form-label">Số điện thoại <span class="text-danger">*</span></label>--%>
<%--          <input type="text"--%>
<%--                 class="form-control ${not empty requestScope.violations.phoneNumberViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.phoneNumber ? 'is-valid' : '')}"--%>
<%--                 id="user-phoneNumber"--%>
<%--                 name="phoneNumber"--%>
<%--                 value="${requestScope.user.phoneNumber}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.phoneNumberViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.phoneNumberViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label class="form-label d-block">Giới tính <span class="text-danger">*</span></label>--%>
<%--          <div class="form-check d-inline-block me-4">--%>
<%--            <input class="form-check-input ${not empty requestScope.violations.genderViolations--%>
<%--                     ? 'is-invalid' : (not empty requestScope.user.gender ? 'is-valid' : '')}"--%>
<%--                   type="radio"--%>
<%--                   name="gender"--%>
<%--                   id="user-gender-male"--%>
<%--                   value="0" ${requestScope.user.gender == '0' ? 'checked' : ''}--%>
<%--                   required>--%>
<%--            <label class="form-check-label" for="user-gender-male">Nam</label>--%>
<%--          </div>--%>
<%--          <div class="form-check d-inline-block">--%>
<%--            <input class="form-check-input ${not empty requestScope.violations.genderViolations--%>
<%--                     ? 'is-invalid' : (not empty requestScope.user.gender ? 'is-valid' : '')}"--%>
<%--                   type="radio"--%>
<%--                   name="gender"--%>
<%--                   id="user-gender-female"--%>
<%--                   value="1" ${requestScope.user.gender == '1' ? 'checked' : ''}--%>
<%--                   required>--%>
<%--            <label class="form-check-label" for="user-gender-female">Nữ</label>--%>
<%--          </div>--%>
<%--          <c:if test="${not empty requestScope.violations.genderViolations}">--%>
<%--            <div class="is-invalid"></div>--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.genderViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-address" class="form-label">Địa chỉ <span class="text-danger">*</span></label>--%>
<%--          <input type="text"--%>
<%--                 class="form-control ${not empty requestScope.violations.addressViolations--%>
<%--                   ? 'is-invalid' : (not empty requestScope.user.address ? 'is-valid' : '')}"--%>
<%--                 id="user-address"--%>
<%--                 name="address"--%>
<%--                 value="${requestScope.user.address}"--%>
<%--                 required>--%>
<%--          <c:if test="${not empty requestScope.violations.addressViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.addressViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--          <label for="user-role" class="form-label">Quyền <span class="text-danger">*</span></label>--%>
<%--          <select class="form-select ${not empty requestScope.violations.roleViolations--%>
<%--                    ? 'is-invalid' : (not empty requestScope.user.role ? 'is-valid' : '')}"--%>
<%--                  id="user-role"--%>
<%--                  name="role"--%>
<%--                  required>--%>
<%--            <option ${empty requestScope.user.role ? 'selected' : ''} disabled>--%>
<%--              Chọn một quyền...--%>
<%--            </option>--%>
<%--            <option value="ADMIN" ${requestScope.user.role == 'ADMIN' ? 'selected' : ''}>--%>
<%--              Quản trị viên--%>
<%--            </option>--%>
<%--            <option value="EMPLOYEE" ${requestScope.user.role == 'EMPLOYEE' ? 'selected' : ''}>--%>
<%--              Nhân viên--%>
<%--            </option>--%>
<%--            <option value="CUSTOMER" ${requestScope.user.role == 'CUSTOMER' ? 'selected' : ''}>--%>
<%--              Khách hàng--%>
<%--            </option>--%>
<%--          </select>--%>
<%--          <c:if test="${not empty requestScope.violations.roleViolations}">--%>
<%--            <div class="invalid-feedback">--%>
<%--              <ul class="list-unstyled">--%>
<%--                <c:forEach var="violation" items="${requestScope.violations.roleViolations}">--%>
<%--                  <li>${violation}</li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </c:if>--%>
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
<%--           href="${pageContext.request.contextPath}/admin/userManager"--%>
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
  <title>Thêm người dùng</title>
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
        <h1>Thêm người dùng</h1>
      </div>
    </div>
    <section class="section-content">
      <div class="container">
<%--        <header class="section-heading py-4">--%>
<%--          <h3 class="section-title">Thêm người dùng</h3>--%>
<%--        </header> <!-- section-heading.// -->--%>

<%--        <main class="row mb-5">--%>
          <form class="col-lg-6" method="POST" action="${pageContext.request.contextPath}/admin/userManager/create">
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
              <label for="user-username" class="form-label">Tên đăng nhập <span class="text-danger">*</span></label>
              <input type="text"
                     class="form-control ${not empty requestScope.violations.usernameViolations
                       ? 'is-invalid' : (not empty requestScope.user.username ? 'is-valid' : '')}"
                     id="user-username"
                     name="username"
                     value="${requestScope.user.username}"
                     required>
              <c:if test="${not empty requestScope.violations.usernameViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.usernameViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-password" class="form-label">Mật khẩu <span class="text-danger">*</span></label>
              <input type="password"
                     class="form-control ${not empty requestScope.violations.passwordViolations
                       ? 'is-invalid' : (not empty requestScope.user.password ? 'is-valid' : '')}"
                     id="user-password"
                     name="password"
                     value="${requestScope.user.password}"
                     required>
              <c:if test="${not empty requestScope.violations.passwordViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.passwordViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-fullname" class="form-label">Họ và tên <span class="text-danger">*</span></label>
              <input type="text"
                     class="form-control ${not empty requestScope.violations.fullnameViolations
                       ? 'is-invalid' : (not empty requestScope.user.fullname ? 'is-valid' : '')}"
                     id="user-fullname"
                     name="fullname"
                     value="${requestScope.user.fullname}"
                     required>
              <c:if test="${not empty requestScope.violations.fullnameViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.fullnameViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-email" class="form-label">Email <span class="text-danger">*</span></label>
              <input type="email"
                     class="form-control ${not empty requestScope.violations.emailViolations
                       ? 'is-invalid' : (not empty requestScope.user.email ? 'is-valid' : '')}"
                     id="user-email"
                     name="email"
                     value="${requestScope.user.email}"
                     required>
              <c:if test="${not empty requestScope.violations.emailViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.emailViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-phoneNumber" class="form-label">Số điện thoại <span class="text-danger">*</span></label>
              <input type="text"
                     class="form-control ${not empty requestScope.violations.phoneNumberViolations
                       ? 'is-invalid' : (not empty requestScope.user.phoneNumber ? 'is-valid' : '')}"
                     id="user-phoneNumber"
                     name="phoneNumber"
                     value="${requestScope.user.phoneNumber}"
                     required>
              <c:if test="${not empty requestScope.violations.phoneNumberViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.phoneNumberViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label class="form-label d-block">Giới tính <span class="text-danger">*</span></label>
              <div class="form-check d-inline-block me-4">
                <input class="form-check-input ${not empty requestScope.violations.genderViolations
                         ? 'is-invalid' : (not empty requestScope.user.gender ? 'is-valid' : '')}"
                       type="radio"
                       name="gender"
                       id="user-gender-male"
                       value="0" ${requestScope.user.gender == '0' ? 'checked' : ''}
                       required>
                <label class="form-check-label" for="user-gender-male">Nam</label>
              </div>
              <div class="form-check d-inline-block">
                <input class="form-check-input ${not empty requestScope.violations.genderViolations
                         ? 'is-invalid' : (not empty requestScope.user.gender ? 'is-valid' : '')}"
                       type="radio"
                       name="gender"
                       id="user-gender-female"
                       value="1" ${requestScope.user.gender == '1' ? 'checked' : ''}
                       required>
                <label class="form-check-label" for="user-gender-female">Nữ</label>
              </div>
              <c:if test="${not empty requestScope.violations.genderViolations}">
                <div class="is-invalid"></div>
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.genderViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-address" class="form-label">Địa chỉ <span class="text-danger">*</span></label>
              <input type="text"
                     class="form-control ${not empty requestScope.violations.addressViolations
                       ? 'is-invalid' : (not empty requestScope.user.address ? 'is-valid' : '')}"
                     id="user-address"
                     name="address"
                     value="${requestScope.user.address}"
                     required>
              <c:if test="${not empty requestScope.violations.addressViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.addressViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
            </div>
            <div class="mb-3">
              <label for="user-role" class="form-label">Quyền <span class="text-danger">*</span></label>
              <select class="form-select ${not empty requestScope.violations.roleViolations
                        ? 'is-invalid' : (not empty requestScope.user.role ? 'is-valid' : '')}"
                      id="user-role"
                      name="role"
                      required>
                <option ${empty requestScope.user.role ? 'selected' : ''} disabled>
                  Chọn một quyền...
                </option>
                <option value="ADMIN" ${requestScope.user.role == 'ADMIN' ? 'selected' : ''}>
                  Quản trị viên
                </option>
                <option value="EMPLOYEE" ${requestScope.user.role == 'EMPLOYEE' ? 'selected' : ''}>
                  Nhân viên
                </option>
                <option value="CUSTOMER" ${requestScope.user.role == 'CUSTOMER' ? 'selected' : ''}>
                  Khách hàng
                </option>
              </select>
              <c:if test="${not empty requestScope.violations.roleViolations}">
                <div class="invalid-feedback">
                  <ul class="list-unstyled">
                    <c:forEach var="violation" items="${requestScope.violations.roleViolations}">
                      <li>${violation}</li>
                    </c:forEach>
                  </ul>
                </div>
              </c:if>
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
               href="${pageContext.request.contextPath}/admin/userManager"
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
