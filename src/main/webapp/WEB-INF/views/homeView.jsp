<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<%--<fmt:setLocale value="vi_VN"/>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="vi">--%>

<%--<head>--%>
<%--  <jsp:include page="_meta.jsp"/>--%>
<%--  <title>Trang chủ</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="_header.jsp"/>--%>

<%--<section class="section-content mb-2">--%>

<%--<div--%>
<%--     class="bg-image"--%>
<%--     style="--%>
<%--            background-image: url('https://images.pexels.com/photos/256455/pexels-photo-256455.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');--%>
<%--            height: 60vh;--%>
<%--            "--%>
<%--     >--%>
<%--  <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">--%>
<%--    <div class="d-flex justify-content-center align-items-center"--%>
<%--         style="--%>
<%--                height: 60vh;--%>
<%--                ">--%>
<%--      <h1 class="text-white mb-0" style="font-size: 5rem;">Bookstore</h1>--%>
<%--    </div>--%>
<%--  </div>--%>

<%--</div>--%>

<%--</section> <!-- section-content.// -->--%>





<%--<section class="section-content mb-5">--%>
<%--  <div class="container">--%>
<%--    <header class="section-heading py-4 d-flex justify-content-between">--%>
<%--      <h3 class="section-title">Sản phẩm mới nhất</h3>--%>
<%--      <a class="btn btn-secondary" href="${pageContext.request.contextPath}/allproduct" role="button" style="height: fit-content;">Xem tất cả</a>--%>
<%--    </header> <!-- section-heading.// -->--%>
<%--    <div class="row item-grid">--%>
<%--      <c:forEach var="product" items="${requestScope.products}">--%>
<%--        <div class="col-xl-3 col-lg-4 col-md-6">--%>
<%--          <div class="card p-3 mb-4">--%>
<%--            <a href="${pageContext.request.contextPath}/product?id=${product.id}" class="img-wrap text-center">--%>
<%--              <c:choose>--%>
<%--                <c:when test="${empty product.imageName}">--%>
<%--                  <img width="200"--%>
<%--                       height="200"--%>
<%--                       class="img-fluid"--%>
<%--                       src="${pageContext.request.contextPath}/img/280px.png"--%>
<%--                       alt="280px.png">--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                  <img width="200"--%>
<%--                       height="200"--%>
<%--                       class="img-fluid"--%>
<%--                       src="${pageContext.request.contextPath}/image/${product.imageName}"--%>
<%--                       alt="${product.imageName}">--%>
<%--                </c:otherwise>--%>
<%--              </c:choose>--%>
<%--            </a>--%>
<%--            <figcaption class="info-wrap mt-2">--%>
<%--              <a href="${pageContext.request.contextPath}/product?id=${product.id}" class="title">${product.name}</a>--%>
<%--              <div>--%>
<%--                <c:choose>--%>
<%--                  <c:when test="${product.discount == 0}">--%>
<%--                    <span class="price mt-1 fw-bold">--%>
<%--                      <fmt:formatNumber pattern="#,##0" value="${product.price}"/>₫--%>
<%--                    </span>--%>
<%--                  </c:when>--%>
<%--                  <c:otherwise>--%>
<%--                    <span class="price mt-1 fw-bold">--%>
<%--                      <fmt:formatNumber--%>
<%--                              pattern="#,##0"--%>
<%--                              value="${product.price * (100 - product.discount) / 100}"/>₫--%>
<%--                    </span>--%>
<%--                    <span class="ms-2 text-muted text-decoration-line-through">--%>
<%--                      <fmt:formatNumber pattern="#,##0" value="${product.price}"/>₫--%>
<%--                    </span>--%>
<%--                    <span class="ms-2 badge bg-info">--%>
<%--                      -<fmt:formatNumber pattern="#,##0" value="${product.discount}"/>%--%>
<%--                    </span>--%>
<%--                  </c:otherwise>--%>
<%--                </c:choose>--%>
<%--              </div>--%>
<%--            </figcaption>--%>
<%--          </div>--%>
<%--        </div> <!-- col.// -->--%>
<%--      </c:forEach>--%>
<%--    </div> <!-- row.// -->--%>
<%--  </div> <!-- container.// -->--%>
<%--</section> <!-- section-content.// -->--%>

<%--<jsp:include page="_footer.jsp"/>--%>
<%--</body>--%>

<%--</html>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="vi_VN" />
<!DOCTYPE html>
<html lang="vi">

<head>
  <jsp:include page="_meta.jsp" />
  <title>Trang chủ</title>
  <link href="${pageContext.request.contextPath}/css/main.css"
        type="text/css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/js/toast.js"
          type="module"></script>
  <script src="${pageContext.request.contextPath}/js/product.js"
          type="module"></script>
<%--  <style>--%>
<%--    body{--%>
<%--      background-color: #0dcaf0;--%>
<%--    }--%>
<%--  </style>--%>
</head>

<body>
<jsp:include page="_header.jsp" />

<section class="section-content mb-2">

<div
     class="bg-image"
     style="
            background-image: url('https://images.pexels.com/photos/256455/pexels-photo-256455.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');
            height: 60vh;
            "
     >
  <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
    <div class="d-flex justify-content-center align-items-center"
         style="
                height: 60vh;
                ">
      <h1 class="text-white mb-0" style="font-size: 5rem;">Bookcatshop</h1>
    </div>
  </div>

</div>

</section> <!-- section-content.// -->



<!-- Hero Start -->
<%--<div class="container  hero-header book-slider">--%>
<%--  <div class="container ">--%>
<%--    <div class="row g-4 align-items-center">--%>

<%--      <div class="col-md-12 col-lg-7">--%>
<%--        <h1 class="mb-5 display-3 text-primary">CHÀO MỪNG ĐẾN VỚI--%>
<%--          BOOKCATSHOP</h1>--%>
<%--        <div class="position-relative mx-auto"></div>--%>
<%--      </div>--%>


<%--      <div class="col-md-12 col-lg-5">--%>
<%--        <div id="carouselId" class="carousel slide position-relative"--%>
<%--             data-bs-ride="carousel">--%>
<%--          <div class="carousel-inner pb-3" role="listbox">--%>
<%--            <div class="carousel-item active rounded">--%>
<%--              <img--%>
<%--                      src="${pageContext.request.contextPath}/img/slider/sach1.jpg"--%>
<%--                      class="img-fluid w-100 h-100 bg-secondary rounded"--%>
<%--                      alt="First slide">--%>

<%--            </div>--%>
<%--            <div class="carousel-item rounded">--%>
<%--              <img--%>
<%--                      src="${pageContext.request.contextPath}/img/slider/sach2.jpg"--%>
<%--                      class="img-fluid w-100 h-100 rounded" alt="Second slide">--%>
<%--              <--%>
<%--            </div>--%>
<%--            <div class="carousel-item rounded">--%>
<%--              <img--%>
<%--                      src="${pageContext.request.contextPath}/img/slider/sach3.jpg"--%>
<%--                      class="img-fluid w-100 h-100 rounded" alt="Second slide">--%>

<%--            </div>--%>
<%--          </div>--%>
<%--          <button class="carousel-control-prev " type="button"--%>
<%--                  data-bs-target="#carouselId" data-bs-slide="prev">--%>
<%--							<span class="carousel-control-prev-icon icon-next-pre"--%>
<%--                                  aria-hidden="true"></span> <span class="visually-hidden">Trước</span>--%>
<%--          </button>--%>
<%--          <button class="carousel-control-next " type="button"--%>
<%--                  data-bs-target="#carouselId" data-bs-slide="next">--%>
<%--							<span class="carousel-control-next-icon  icon-next-pre"--%>
<%--                                  aria-hidden="true"></span> <span class="visually-hidden ">Sau</span>--%>
<%--          </button>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<!-- Hero End -->


<!-- Sản phẩm -->
<div class="container-fluid fruite ">
  <div class="container ">
    <div class="tab-class text-center">
      <!-- thể loại -->
      <div class="container">
        <header class="section-heading py-4 d-flex justify-content-between">
          <h3 class="section-title">Danh mục sản phẩm</h3>
<%--          <a class="btn btn-secondary" href="#" role="button"--%>
<%--             style="height: fit-content;">Xem tất cả</a>--%>
        </header>
        <!-- section-heading.// -->

        <div class="row item-grid pt-4 rounded-lg-1 main-bg-color">
          <c:forEach var="category" items="${requestScope.categories}">
            <div class="col-lg-3 col-md-6 ">
              <div class="card mb-4 item-category">
                <div class="card-body">
                  <a
                          href="${pageContext.request.contextPath}/category?id=${category.id}"
                          class="stretched-link">
                    <div class="d-flex align-items-center">
                      <c:choose>
                        <c:when test="${empty category.imageName}">
                          <img width="50" height="50"
                               src="${pageContext.request.contextPath}/img/50px.png"
                               alt="50px.png">
                        </c:when>
                        <c:otherwise>
                          <img width="50" height="50"
                               src="${pageContext.request.contextPath}/image/${category.imageName}"
                               alt="${category.imageName}">
                        </c:otherwise>
                      </c:choose>
                      <span class="category-title ms-3">${category.name}</span>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <!-- col.// -->
          </c:forEach>
        </div>
        <!-- row.// -->

      </div>
      <!-- container.// -->

      <div class="container">
        <header class="section-heading py-4 d-flex justify-content-between">
          <h3 class="section-title">Gian hàng sách</h3>
          <a class="btn btn-secondary" href="${pageContext.request.contextPath}/allproduct" role="button"
             style="height: fit-content;">Xem tất cả</a>
        </header>
        <!-- section-heading.// -->
      </div>
      <!-- container.// -->

      <div class="tab-content">
        <div id="tab-1" class="tab-pane fade show p-0 active">
          <div class="row g-4">
            <div class="col-lg-12">
              <div class="row g-4">
                <!-- sách -->
                <c:forEach var="product" items="${requestScope.products}">
                  <div class="col-md-6 col-lg-4 col-xl-3  ">
                    <div class="rounded position-relative frame-img cell-book">
                      <!-- bia -->
                      <div class="fruite-img">
                        <a
                                href="${pageContext.request.contextPath}/product?id=${product.id}">
                          <c:choose>
                            <c:when test="${empty product.imageName}">
                              <img class="img-fluid w-100 rounded-top"
                                   src="${pageContext.request.contextPath}/img/280px.png"
                                   alt="280px.png">
                            </c:when>
                            <c:otherwise>
                              <img class="img-fluid w-100 rounded-top"
                                   src="${pageContext.request.contextPath}/image/${product.imageName}"
                                   alt="${product.imageName}">
                            </c:otherwise>
                          </c:choose>
                        </a>
                      </div>
                      <!-- bia -->
                      <div
                              class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <div class="mx-0">
                          <a
                                  href="${pageContext.request.contextPath}/product?id=${product.id}"
                                  class="title">${product.name} </a>
                        </div>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <c:choose>
                            <c:when test="${product.discount == 0}">
																<span class="price mt-1 fw-bold"> <fmt:formatNumber
                                                                        pattern="#,##0" value="${product.price}" />₫
																</span>
                            </c:when>
                            <c:otherwise>
																<span class="price mt-1 fw-bold"> <fmt:formatNumber
                                                                        pattern="#,##0"
                                                                        value="${product.price * (100 - product.discount) / 100}" />
																	₫
																</span>
                              <span
                                      class="ms-2 text-muted text-decoration-line-through">
																	<fmt:formatNumber pattern="#,##0"
                                                                                      value="${product.price}" />₫
																</span>
                              <span class="ms-2 badge bg-info"> - <fmt:formatNumber
                                      pattern="#,##0" value="${product.discount}" />%
																</span>
                            </c:otherwise>
                          </c:choose>
                        </div>
<%--                        <div class="mt-3 justify-content-between ">--%>

<%--                          <button type="button" class="btn  btn-add-cart"--%>
<%--                                  id="add-cart-item">--%>
<%--                            <i class="fa fa-shopping-bag me-2 "></i> Thêm vào giỏ--%>
<%--                            hàng--%>
<%--                          </button>--%>
<%--                        </div>--%>
                        <div class="mt-3 justify-content-between ">

                          <button type="button" class="btn  btn-add-cart"
                                  id="add-cart-item">
                            <i class="fa fa-shopping-bag me-2 "></i> Thêm vào giỏ hàng
                          </button>
                        </div>


                      </div>
                    </div>
                  </div>
                </c:forEach>
                <!-- end sách -->


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- E Sản phẩm -->
<jsp:include page="_footer.jsp" />
<div class="toast-container position-fixed bottom-0 start-0 p-3"></div>
</body>

</html>