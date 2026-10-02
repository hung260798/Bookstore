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
<%--  <title>Quản lý đơn hàng</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_headerAdmin.jsp"/>--%>

<%--<section class="section-content">--%>
<%--  <div class="container">--%>
<%--    <c:if test="${not empty sessionScope.successMessage}">--%>
<%--      <div class="alert alert-success mb-0 mt-4" role="alert">--%>
<%--          ${sessionScope.successMessage}--%>
<%--      </div>--%>
<%--    </c:if>--%>
<%--    <c:if test="${not empty sessionScope.errorMessage}">--%>
<%--      <div class="alert alert-danger mb-0 mt-4" role="alert">--%>
<%--          ${sessionScope.errorMessage}--%>
<%--      </div>--%>
<%--    </c:if>--%>
<%--    <c:remove var="successMessage" scope="session"/>--%>
<%--    <c:remove var="errorMessage" scope="session"/>--%>

<%--    <header class="section-heading py-4">--%>
<%--      <h3 class="section-title">Quản lý đơn hàng</h3>--%>
<%--    </header> <!-- section-heading.// -->--%>

<%--    <main class="table-responsive-xl mb-5">--%>
<%--      <table class="table table-bordered table-striped table-hover align-middle">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--          <th scope="col">#</th>--%>
<%--          <th scope="col">Mã</th>--%>
<%--          <th scope="col">Người dùng</th>--%>
<%--          <th scope="col">Ngày tạo</th>--%>
<%--          <th scope="col">Ngày cập nhật</th>--%>
<%--          <th scope="col">Số sản phẩm</th>--%>
<%--          <th scope="col">Tổng tiền</th>--%>
<%--          <th scope="col">Trạng thái</th>--%>
<%--          <th scope="col" style="width: 250px;">Thao tác</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="order" varStatus="loop" items="${requestScope.orders}">--%>
<%--          <tr>--%>
<%--            <th scope="row">${loop.index + 1}</th>--%>
<%--            <td>${order.id}</td>--%>
<%--            <td>--%>
<%--              <a href="${pageContext.request.contextPath}/admin/userManager/detail?id=${order.user.id}">--%>
<%--                  ${order.user.username}--%>
<%--              </a>--%>
<%--              (${order.user.fullname})--%>
<%--            </td>--%>
<%--            <td>${order.createdAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</td>--%>
<%--            <td>${order.updatedAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</td>--%>
<%--            <td>${order.orderItems.size()}</td>--%>
<%--            <td class="text-end">--%>
<%--              <c:choose>--%>
<%--                <c:when test="${order.deliveryMethod == 2}">--%>
<%--                  <i class="bi bi-truck me-1" title="Giao nhanh"></i>--%>
<%--                </c:when>--%>
<%--              </c:choose>--%>
<%--              <fmt:formatNumber pattern="#,##0" value="${order.totalPrice}"/>₫--%>
<%--            </td>--%>
<%--            <td>--%>
<%--              <c:choose>--%>
<%--                <c:when test="${order.status == 1}">--%>
<%--                  <span class="badge bg-warning text-dark">Đang giao hàng</span>--%>
<%--                </c:when>--%>
<%--                <c:when test="${order.status == 2}">--%>
<%--                  <span class="badge bg-success">Giao hàng thành công</span>--%>
<%--                </c:when>--%>
<%--                <c:when test="${order.status == 3}">--%>
<%--                  <span class="badge bg-danger">Hủy đơn hàng</span>--%>
<%--                </c:when>--%>
<%--              </c:choose>--%>
<%--            </td>--%>
<%--            <td class="text-center text-nowrap">--%>
<%--              <a class="btn btn-primary me-2"--%>
<%--                 href="${pageContext.request.contextPath}/admin/orderManager/detail?id=${order.id}"--%>
<%--                 role="button">--%>
<%--                Xem--%>
<%--              </a>--%>
<%--              <button type="submit"--%>
<%--                      class="btn ${order.status == 2 || order.status == 3 ? 'btn-secondary' : 'btn-success'} me-2"--%>
<%--                      form="update-confirm-${order.id}" ${order.status == 2 || order.status == 3 ? 'disabled' : ''}--%>
<%--                      onclick="return confirm('Bạn có muốn xác nhận đã giao đơn hàng này?')"--%>
<%--                      title="Xác nhận đã giao">--%>
<%--                <i class="bi bi-check-circle"></i>--%>
<%--              </button>--%>
<%--              <button type="submit"--%>
<%--                      class="btn  ${order.status == 2 || order.status == 3 ? 'btn-secondary' : 'btn-danger'} me-2"--%>
<%--                      form="update-cancel-${order.id}" ${order.status == 2 || order.status == 3 ? 'disabled' : ''}--%>
<%--                      onclick="return confirm('Bạn có muốn hủy đơn hàng này?')"--%>
<%--                      title="Hủy đơn hàng">--%>
<%--                <i class="bi bi-x-circle"></i>--%>
<%--              </button>--%>
<%--              <button type="submit"--%>
<%--                      class="btn  ${order.status == 1 ? 'btn-secondary' : 'btn-warning'}"--%>
<%--                      form="update-reset-${order.id}" ${order.status == 1 ? 'disabled' : ''}--%>
<%--                      onclick="return confirm('Bạn có muốn đặt lại trạng thái là đang giao hàng cho đơn hàng này?')"--%>
<%--                      title="Đặt lại trạng thái là đang giao hàng">--%>
<%--                <i class="bi bi-arrow-clockwise"></i>--%>
<%--              </button>--%>
<%--              <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"--%>
<%--                    id="update-confirm-${order.id}">--%>
<%--                <input type="hidden" name="id" value="${order.id}">--%>
<%--                <input type="hidden" name="action" value="CONFIRM">--%>
<%--              </form>--%>
<%--              <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"--%>
<%--                    id="update-cancel-${order.id}">--%>
<%--                <input type="hidden" name="id" value="${order.id}">--%>
<%--                <input type="hidden" name="action" value="CANCEL">--%>
<%--              </form>--%>
<%--              <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"--%>
<%--                    id="update-reset-${order.id}">--%>
<%--                <input type="hidden" name="id" value="${order.id}">--%>
<%--                <input type="hidden" name="action" value="RESET">--%>
<%--              </form>--%>
<%--            </td>--%>
<%--          </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--      </table>--%>
<%--    </main>--%>

<%--    <c:if test="${requestScope.totalPages != 0}">--%>
<%--      <nav class="mt-3 mb-5">--%>
<%--        <ul class="pagination justify-content-center">--%>
<%--          <li class="page-item ${requestScope.page == 1 ? 'disabled' : ''}">--%>
<%--            <a class="page-link"--%>
<%--               href="${pageContext.request.contextPath}/admin/orderManager?page=${requestScope.page - 1}">--%>
<%--              Trang trước--%>
<%--            </a>--%>
<%--          </li>--%>

<%--          <c:forEach begin="1" end="${requestScope.totalPages}" var="i">--%>
<%--            <c:choose>--%>
<%--              <c:when test="${requestScope.page == i}">--%>
<%--                <li class="page-item active">--%>
<%--                  <a class="page-link">${i}</a>--%>
<%--                </li>--%>
<%--              </c:when>--%>
<%--              <c:otherwise>--%>
<%--                <li class="page-item">--%>
<%--                  <a class="page-link"--%>
<%--                     href="${pageContext.request.contextPath}/admin/orderManager?page=${i}">--%>
<%--                      ${i}--%>
<%--                  </a>--%>
<%--                </li>--%>
<%--              </c:otherwise>--%>
<%--            </c:choose>--%>
<%--          </c:forEach>--%>

<%--          <li class="page-item ${requestScope.page == requestScope.totalPages ? 'disabled' : ''}">--%>
<%--            <a class="page-link"--%>
<%--               href="${pageContext.request.contextPath}/admin/orderManager?page=${requestScope.page + 1}">--%>
<%--              Trang sau--%>
<%--            </a>--%>
<%--          </li>--%>
<%--        </ul>--%>
<%--      </nav>--%>
<%--    </c:if>--%>
<%--  </div> <!-- container.// -->--%>
<%--</section> <!-- section-content.// -->--%>

<%--<jsp:include page="_footerAdmin.jsp"/>--%>
<%--</body>--%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản lí đơn hàng</title>
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
    <li class="active">
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
        <h1>Quản lí đơn hàng</h1>
      </div>
    </div>

    <section class="section-content">
      <div class="container">
        <c:if test="${not empty sessionScope.successMessage}">
          <div class="alert alert-success mb-0 mt-4" role="alert">
              ${sessionScope.successMessage}
          </div>
        </c:if>
        <c:if test="${not empty sessionScope.errorMessage}">
          <div class="alert alert-danger mb-0 mt-4" role="alert">
              ${sessionScope.errorMessage}
          </div>
        </c:if>
        <c:remove var="successMessage" scope="session"/>
        <c:remove var="errorMessage" scope="session"/>

        <header class="section-heading py-4">
<%--          <h3 class="section-title">Quản lý đơn hàng</h3>--%>
        </header> <!-- section-heading.// -->

<%--        <main class="table-responsive-xl mb-5">--%>
          <table class="table table-bordered table-striped table-hover align-middle">
            <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Mã</th>
              <th scope="col">Người dùng</th>
              <th scope="col">Ngày tạo</th>
              <th scope="col">Ngày cập nhật</th>
              <th scope="col">Số sản phẩm</th>
              <th scope="col">Tổng tiền</th>
              <th scope="col">Trạng thái</th>
              <th scope="col" style="width: 250px;">Thao tác</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="order" varStatus="loop" items="${requestScope.orders}">
              <tr>
                <th scope="row">${loop.index + 1}</th>
                <td>${order.id}</td>
                <td>
                  <a href="${pageContext.request.contextPath}/admin/userManager/detail?id=${order.user.id}">
                      ${order.user.username}
                  </a>
                  (${order.user.fullname})
                </td>
                <td>${order.createdAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</td>
                <td>${order.updatedAt.format(DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy"))}</td>
                <td>${order.orderItems.size()}</td>
                <td class="text-end">
                  <c:choose>
                    <c:when test="${order.deliveryMethod == 2}">
                      <i class="bi bi-truck me-1" title="Giao nhanh"></i>
                    </c:when>
                  </c:choose>
                  <fmt:formatNumber pattern="#,##0" value="${order.totalPrice}"/>₫
                </td>
                <td>
                  <c:choose>
                    <c:when test="${order.status == 1}">
                      <span class="badge bg-warning text-dark">Đang giao hàng</span>
                    </c:when>
                    <c:when test="${order.status == 2}">
                      <span class="badge bg-success">Giao hàng thành công</span>
                    </c:when>
                    <c:when test="${order.status == 3}">
                      <span class="badge bg-danger">Hủy đơn hàng</span>
                    </c:when>
                  </c:choose>
                </td>
                <td class="text-center text-nowrap">
                  <a class="btn btn-primary me-2"
                     href="${pageContext.request.contextPath}/admin/orderManager/detail?id=${order.id}"
                     role="button">
                    Xem
                  </a>
                  <button type="submit"
                          class="btn ${order.status == 2 || order.status == 3 ? 'btn-secondary' : 'btn-success'} me-2"
                          form="update-confirm-${order.id}" ${order.status == 2 || order.status == 3 ? 'disabled' : ''}
                          onclick="return confirm('Bạn có muốn xác nhận đã giao đơn hàng này?')"
                          title="Xác nhận đã giao">
                    <i class="bi bi-check-circle"></i>
                  </button>
                  <button type="submit"
                          class="btn  ${order.status == 2 || order.status == 3 ? 'btn-secondary' : 'btn-danger'} me-2"
                          form="update-cancel-${order.id}" ${order.status == 2 || order.status == 3 ? 'disabled' : ''}
                          onclick="return confirm('Bạn có muốn hủy đơn hàng này?')"
                          title="Hủy đơn hàng">
                    <i class="bi bi-x-circle"></i>
                  </button>
                  <button type="submit"
                          class="btn  ${order.status == 1 ? 'btn-secondary' : 'btn-warning'}"
                          form="update-reset-${order.id}" ${order.status == 1 ? 'disabled' : ''}
                          onclick="return confirm('Bạn có muốn đặt lại trạng thái là đang giao hàng cho đơn hàng này?')"
                          title="Đặt lại trạng thái là đang giao hàng">
                    <i class="bi bi-arrow-clockwise"></i>
                  </button>
                  <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"
                        id="update-confirm-${order.id}">
                    <input type="hidden" name="id" value="${order.id}">
                    <input type="hidden" name="action" value="CONFIRM">
                  </form>
                  <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"
                        id="update-cancel-${order.id}">
                    <input type="hidden" name="id" value="${order.id}">
                    <input type="hidden" name="action" value="CANCEL">
                  </form>
                  <form action="${pageContext.request.contextPath}/admin/orderManager/update" method="post"
                        id="update-reset-${order.id}">
                    <input type="hidden" name="id" value="${order.id}">
                    <input type="hidden" name="action" value="RESET">
                  </form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
<%--        </main>--%>

        <c:if test="${requestScope.totalPages != 0}">
<%--          <nav class="mt-3 mb-5">--%>
            <ul class="pagination justify-content-center">
              <li class="page-item ${requestScope.page == 1 ? 'disabled' : ''}">
                <a class="page-link"
                   href="${pageContext.request.contextPath}/admin/orderManager?page=${requestScope.page - 1}">
                  Trang trước
                </a>
              </li>

              <c:forEach begin="1" end="${requestScope.totalPages}" var="i">
                <c:choose>
                  <c:when test="${requestScope.page == i}">
                    <li class="page-item active">
                      <a class="page-link">${i}</a>
                    </li>
                  </c:when>
                  <c:otherwise>
                    <li class="page-item">
                      <a class="page-link"
                         href="${pageContext.request.contextPath}/admin/orderManager?page=${i}">
                          ${i}
                      </a>
                    </li>
                  </c:otherwise>
                </c:choose>
              </c:forEach>

              <li class="page-item ${requestScope.page == requestScope.totalPages ? 'disabled' : ''}">
                <a class="page-link"
                   href="${pageContext.request.contextPath}/admin/orderManager?page=${requestScope.page + 1}">
                  Trang sau
                </a>
              </li>
            </ul>
<%--          </nav>--%>
        </c:if>
      </div> <!-- container.// -->
    </section> <!-- section-content.// -->

  </main>
  <!-- MAIN -->
</section>
</body>

</html>
