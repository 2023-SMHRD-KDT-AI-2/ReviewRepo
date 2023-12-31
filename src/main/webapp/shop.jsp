<%@page import="javax.servlet.jsp.el.ScopedAttributeELResolver"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.*"%>
<%@page import="com.smhrd.model.SearchDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

<style>
 .before-sale{
   text-decoration: line-through;
   color: gray;
}

.prod-price .total-price {
    font-size: 20px;
    line-height: 21px;
}
.prod-price .major-price-coupon {
    color: #cb1400;
}
</style>


</head>
<body>
	<%
	String user_id = null;
	if (session.getAttribute("user_id") != null) {
		user_id = (String) session.getAttribute("user_id");
	}
	%>
	<div class="site-wrap">
		<header class="site-navbar" role="banner">
			<div class="site-navbar-top">
				<div class="container">
					<div class="row align-items-center">

						<div class="col-6 col-md-4 order-2 order-md-1 text-center">
							<div class="site-logo">
								<a href="index.jsp" class="js-logo-clone">In Foot <br>
									Out Foot
								</a>
							</div>
						</div>

						<div
							class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 site-search-icon text-left">
							<form action="productSearch" class="site-block-top-search">


								<span class="icon icon-search2"></span>
								<!-- text부분을 데이터베이스에 가져와서 비교작업!! -->
								<input type="text" class="form-control border-0" name="search"
									placeholder="Search">
							</form>
						</div>

						<div class="col-6 col-md-4 order-3 order-md-3 text-right">
							<div class="site-top-icons">
								<ul>
									<%
									if (user_id == null) {
									%>
									<li><a href="#"><span class="icon icon-person"></span></a></li>
									<%
									} else if (user_id != null) {
									%>
									<li><span
										style="color: black; text-decoration: underline; text-underline-position: under;"><strong>${info.user_id}</strong></span>님
										환영합니다</li>
									<li><a href="LogoutService"><span
											class="icon icon-person"></span></a></li>
									<%
									}
									%>
									<li><a href="CartPage" class="site-cart"> <span
											class="icon icon-shopping_cart"></span> <span class="count">2</span>
									</a></li>
									<li class="d-inline-block d-md-none ml-md-0"><a href="#"
										class="site-menu-toggle js-menu-toggle"><span
											class="icon-menu"></span></a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<nav class="site-navigation text-right text-md-center"
				role="navigation">
				<div class="container">
					<ul class="site-menu js-clone-nav d-none d-md-block">
						<li class="has-children"><a href="index.jsp">Home</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
								<li class="has-children"><a href="#">Sub Menu</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul></li>
							</ul></li>
						<li class="has-children"><a href="about.jsp">About</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
							</ul></li>
						<li class="active"><a href="shop.jsp">Shop</a></li>
						<li><a href="#">Catalogue</a></li>
						<li><a href="#">New Arrivals</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
			</nav>
		</header>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Shop</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">

				<div class="row mb-5">
					<div class="col-md-9 order-2">

						<div class="row">
							<div class="col-md-12 mb-5">
								<div class="float-md-left mb-4">
									<h2 class="text-black h5">Shop All</h2>
								</div>
								<div class="d-flex">
									<div class="dropdown mr-1 ml-md-auto">
										<button type="button"
											class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuOffset" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Latest</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuOffset">
											<a class="dropdown-item" href="#">Men</a> <a
												class="dropdown-item" href="#">Women</a> <a
												class="dropdown-item" href="#">Children</a>
										</div>
									</div>
									<div class="btn-group">
										<button type="button"
											class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuReference">
											<a class="dropdown-item" href="#">Relevance</a> <a
												class="dropdown-item" href="#">Name, A to Z</a> <a
												class="dropdown-item" href="#">Name, Z to A</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Price, low to high</a> <a
												class="dropdown-item" href="#">Price, high to low</a>
										</div>
									</div>
								</div>
							</div>
						</div>










						<%
						ArrayList<Search> list = (ArrayList) request.getAttribute("shoes");
						//pageContext.setAttribute("list", list);
						session.setAttribute("list", list);
						System.out.println(list);

						//ArrayList<Search> list = new ArrayList<Search>();
						//request.getAttribute("shoes");

						//session.setAttribute("list", list);
						
						
						%>

						<div class="row mb-5">

							<c:forEach var="item" items="${list}" varStatus="status">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
    <div class="block-4 text-center border" style="height: 400px;">
        <figure class="block-4-image col-md-12">
            <a href="DetailService?selectedPro_id=${item.pro_id}"><img
                src="${item.img1_path}" alt="Image placeholder"
                class="img-fluid" style="height: 220px;"></a>
        </figure>
        <div class="block-4-text p-4">
            <h3>
                <a href="shop-single.jsp">${item.pro_name}</a>
            </h3>
            <p class="mb-0">${item.pro_category}</p>
            <p class="font-weight-bold prod-price major-price-coupon" style="font-size: 20px; line-height: 21px; color: #cb1400;">
                <fmt:formatNumber value="${item.pro_price}" pattern="#,###" />
            </p>
        </div>
    </div>
</div>
							</c:forEach>



						</div>


						<% 
						ProductDiscountDAO dao = new ProductDiscountDAO();
						ArrayList<ProductDiscount> dlist =new ArrayList<>();
						dlist = dao.discountlist();
						session.setAttribute("discountlist", dlist);
						
						
						
						%>
						<div class="row mb-5">

							<c:forEach var="discount" items="${discountlist}" varStatus="anotherstatus">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border" style="height: 400px;">
										<figure class="block-4-image col-md-12">
											<a href="DetailService?selectedPro_id=${discount.pro_id}"><img
												src="${discount.img1_path}" alt="Image placeholder"
												class="img-fluid" style="height: 220px;"></a>
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<a href="shop-single.jsp">${discount.pro_name}</a>
											</h3>
											<p class="mb-0">${discount.pro_category}</p>
											<%-- discount.pro_price 값 가져오기 --%>
<c:set var="proPrice" value="${discount.pro_price}" />

<%-- formattedPrice 변수에 값을 설정하고 3단위로 쉼표로 구분 --%>
<fmt:formatNumber var="formattedPrice" value="${proPrice}" type="number" pattern="#,###" />

<%-- discount.discount_percentage 값을 100에서 뺀 값으로 계산 --%>
<c:set var="discountPercentage" value="${100 - discount.discount_percentage}" />

<p class="font-weight-bold prod-price major-price-coupon">
    ${discountPercentage}% 할인 &nbsp; <span class="before-sale">${formattedPrice}</span>
</p>
										
										<%-- discount.pro_price와 discount.discount_percentage를 곱하고 100으로 나눈 값을 계산하여 formattedPrice 변수에 저장 --%>
<c:set var="formattedPrice" value="${(discount.pro_price * discount.discount_percentage) / 100}" />

<%-- formattedPrice 값을 3단위로 쉼표로 구분하여 출력 --%>
<fmt:formatNumber var="formattedPriceFormatted" value="${formattedPrice}" pattern="#,###" />

<p class="font-weight-bold prod-price major-price-coupon" style="font-size: 20px; line-height: 21px; color: #cb1400;">
    ${formattedPriceFormatted}
</p>

										</div>
									</div>
								</div>
							</c:forEach>



						</div>










						<div class="row" data-aos="fade-up">
							<div class="col-md-12 text-center">
								<div class="site-block-27">
									<ul>
										<li><a href="#">&lt;</a></li>
										<li class="active"><span>1</span></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">&gt;</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3 order-1 mb-5 mb-md-0">
						<div class="border p-4 rounded mb-4">
							<h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
							<ul class="list-unstyled mb-0">
								<li class="mb-1"><a href="#" class="d-flex"><span>Men</span>
										<span class="text-black ml-auto">(2,220)</span></a></li>
								<li class="mb-1"><a href="#" class="d-flex"><span>Women</span>
										<span class="text-black ml-auto">(2,550)</span></a></li>
								<li class="mb-1"><a href="#" class="d-flex"><span>Children</span>
										<span class="text-black ml-auto">(2,124)</span></a></li>
							</ul>
						</div>

						<div class="border p-4 rounded mb-4">
							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Filter
									by Price</h3>
								<div id="slider-range" class="border-primary"></div>
								<input type="text" name="text" id="amount"
									class="form-control border-0 pl-0 bg-white" disabled="" />
							</div>

							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Size</h3>
								<label for="s_sm" class="d-flex"> <input type="checkbox"
									id="s_sm" class="mr-2 mt-1"> <span class="text-black">Small
										(2,319)</span>
								</label> <label for="s_md" class="d-flex"> <input
									type="checkbox" id="s_md" class="mr-2 mt-1"> <span
									class="text-black">Medium (1,282)</span>
								</label> <label for="s_lg" class="d-flex"> <input
									type="checkbox" id="s_lg" class="mr-2 mt-1"> <span
									class="text-black">Large (1,392)</span>
								</label>
							</div>

							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Color</h3>
								<a href="#" class="d-flex color-item align-items-center"> <span
									class="bg-danger color d-inline-block rounded-circle mr-2"></span>
									<span class="text-black">Red (2,429)</span>
								</a> <a href="#" class="d-flex color-item align-items-center"> <span
									class="bg-success color d-inline-block rounded-circle mr-2"></span>
									<span class="text-black">Green (2,298)</span>
								</a> <a href="#" class="d-flex color-item align-items-center"> <span
									class="bg-info color d-inline-block rounded-circle mr-2"></span>
									<span class="text-black">Blue (1,075)</span>
								</a> <a href="#" class="d-flex color-item align-items-center"> <span
									class="bg-primary color d-inline-block rounded-circle mr-2"></span>
									<span class="text-black">Purple (1,075)</span>
								</a>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="site-section site-blocks-2">
							<div class="row justify-content-center text-center mb-5">
								<div class="col-md-7 site-section-heading pt-4">
									<h2>Categories</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0"
									data-aos="fade" data-aos-delay="">
									<a class="block-2-item" href="#">
										<figure class="image">
											<img src="images/women.jpg" alt="" class="img-fluid">
										</figure>
										<div class="text">
											<span class="text-uppercase">Collections</span>
											<h3>Women</h3>
										</div>
									</a>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
									data-aos="fade" data-aos-delay="100">
									<a class="block-2-item" href="#">
										<figure class="image">
											<img src="images/children.jpg" alt="" class="img-fluid">
										</figure>
										<div class="text">
											<span class="text-uppercase">Collections</span>
											<h3>Children</h3>
										</div>
									</a>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
									data-aos="fade" data-aos-delay="200">
									<a class="block-2-item" href="#">
										<figure class="image">
											<img src="images/men.jpg" alt="" class="img-fluid">
										</figure>
										<div class="text">
											<span class="text-uppercase">Collections</span>
											<h3>Men</h3>
										</div>
									</a>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>

		<footer class="site-footer border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb-5 mb-lg-0">
						<div class="row">
							<div class="col-md-12">
								<h3 class="footer-heading mb-4">Navigations</h3>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Sell online</a></li>
									<li><a href="#">Features</a></li>
									<li><a href="#">Shopping cart</a></li>
									<li><a href="#">Store builder</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Mobile commerce</a></li>
									<li><a href="#">Dropshipping</a></li>
									<li><a href="#">Website development</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Point of sale</a></li>
									<li><a href="#">Hardware</a></li>
									<li><a href="#">Software</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
						<h3 class="footer-heading mb-4">Promo</h3>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="block-5 mb-5">
							<h3 class="footer-heading mb-4">Contact Info</h3>
							<ul class="list-unstyled">
								<li class="address">203 Fake St. Mountain View, San
									Francisco, California, USA</li>
								<li class="phone"><a href="tel://23923929210">+2 392
										3929 210</a></li>
								<li class="email">emailaddress@domain.com</li>
							</ul>
						</div>

						<div class="block-7">
							<form action="#" method="post">
								<label for="email_subscribe" class="footer-heading">Subscribe</label>
								<div class="form-group">
									<input type="text" class="form-control py-4"
										id="email_subscribe" placeholder="Email"> <input
										type="submit" class="btn btn-sm btn-primary" value="Send">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script data-cfasync="false"
								src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>
</html>