<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.*"%>
<%@page import="java.util.List"%>
<%@ page import="com.smhrd.model.Product"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




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

</head>

<body>

	<div class="site-wrap">
		<header class="site-navbar" role="banner">
			<div class="site-navbar-top">
				<div class="container">
					<div class="row align-items-center">

						<div
							class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
							<form action="" class="site-block-top-search">
								<span class="icon icon-search2"></span> <input type="text"
									class="form-control border-0" placeholder="Search">
							</form>
						</div>

						<div
							class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
							<div class="site-logo">
								<a href="index.jsp" class="js-logo-clone">In Foot <br>
									Out Foot
								</a>
							</div>
						</div>

						<div class="col-6 col-md-4 order-3 order-md-3 text-right">
							<div class="site-top-icons">
								<ul>
									<%
									String user_id = null;
									if (session.getAttribute("user_id") != null) {
										user_id = (String) session.getAttribute("user_id");
									}
									%>
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
									<li><a href="cart.jsp" class="site-cart"> <span
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

		<!--  forEach문 시작 -->

		<c:forEach var="product" items="${productList}">
			<fmt:formatNumber value="${pro_price}" pattern="#,###" />
			<div class="bg-light py-3">
				<div class="container">
					<div class="row">
						<div class="col-md-12 mb-0">
							<a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong
								class="text-black"> ${product.pro_category}<span
								class="mx-2 mb-0">/</span> ${product.pro_name}

							</strong>
						</div>
					</div>
				</div>
			</div>

			<div class="site-section">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<img src="${product.img1_path}" alt="Image" class="img-fluid">
						</div>

						<div class="col-md-6">
							<!--  상품명 -->

							<h2 class="text-black">${product.pro_name}</h2>
							<!-- 상품설명 -->

							<p>${product.pro_info}</p>


							<p class="mb-4"></p>
							<p class="text-primary my-line-through"
								style="float: left; padding-right: 15px;">
								<fmt:formatNumber value="${product.pro_price}" pattern="#,###" />
								원
							</p>

							<p>
								<strong class="text-primary h4"><fmt:formatNumber
										value="${product.pro_cost}" pattern="#,###" />원</strong>
							</p>
		</c:forEach>





		<!--  옵션으로 사이즈 바꾸기 -->
		<br>
		<div class="mb-1 d-flex" style="float: left; margin-right: 20px;">
			<select id="shoe_size" name="shoe_size"
				style="width: 120px; height: 43px;">
				<option value="220">220</option>
				<option value="225">225</option>
				<option value="230">230</option>
				<option value="235">235</option>
				<option value="240">240</option>
				<option value="245">245</option>
				<option value="250">250</option>
				<option value="255">255</option>
				<option value="260">260</option>
				<option value="265">265</option>
				<option value="270">270</option>
				<option value="275">275</option>
				<option value="280">280</option>
				<option value="285">285</option>
				<option value="290">290</option>
			</select>


			<script>
				// 품절된 사이즈 목록
				var soldOutSizes = [ "225", "260" ]; // 품절된 사이즈를 여기에 추가

				// select 요소 가져오기
				var selectElement = document.getElementById("shoe_size");

				// select 요소 초기화
				selectElement.selectedIndex = 0;

				// select 요소 변경 시 실행할 함수
				selectElement.addEventListener("change", function() {
					var selectedSize = selectElement.value;

					// 선택한 옵션이 품절된 사이즈인 경우 선택 취소
					if (soldOutSizes.includes(selectedSize)) {
						selectElement.selectedIndex = -1;
						alert(selectedSize + " 사이즈는 품절되었습니다.");
					}
				});

				// 품절된 사이즈를 비활성화하는 함수
				function disableSoldOutSizes() {
					for (var i = 0; i < selectElement.options.length; i++) {
						var option = selectElement.options[i];
						if (soldOutSizes.includes(option.value)) {
							option.disabled = true;
							option.text = option.value + " (품절)";
						} else {
							option.disabled = false;
						}
					}
				}

				// 페이지 로드 시 품절된 사이즈를 비활성화
				disableSoldOutSizes();
			</script>


		</div>
		<div class="mb-5" style="float: left;">
			<div class="input-group mb-3" style="max-width: 120px;">
				<div class="input-group-prepend">
					<button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
				</div>
				<input type="text" class="form-control text-center" value="1"
					placeholder="" aria-label="Example text with button addon"
					aria-describedby="button-addon1">
				<div class="input-group-append">
					<button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
				</div>
			</div>

		</div>
		<div style=>
			<br> <br> <br> <br>
			<p>
				<a href="cart.jsp" class="buy-now btn btn-sm btn-primary">장바구니
					담기</a>
			</p>
		</div>


	</div>
	</div>
	</div>
	</div>

	<div class="site-section block-3 site-blocks-2 bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>상품 리뷰</h2>
					<!--DB에서 상품 리뷰 가져오기-->
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="nonloop-block-3 owl-carousel">
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>


						<div>

							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div>

							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div>
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분1234-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div>
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
							</div>
						</div>
						<div>
							<div class="block-4 text-center">
								<figure class="block-4-image">
									<!--리뷰에 대한 사진 넣는 부분-->
									<img src="" alt="" class="">
								</figure>
								<div class="block-4-text p-4">
									<h3>
										<a href="#">리뷰제목</a>
									</h3>
									<p class="mb-0">신발에 대한 자세한 리뷰</p>
									<p class="text-primary font-weight-bold">뭘쓸지 생각</p>
								</div>
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