<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.payment {
	position: relative;
	right: 50;
	margin-left: auto;
}

.before-sale {
	text-decoration: line-through;
	color: gray;
}
</style>

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
								<a href="index.jsp" class="js-logo-clone">Shoppers</a>
							</div>
						</div>

						<div class="col-6 col-md-4 order-3 order-md-3 text-right">
							<div class="site-top-icons">
								<ul>
									<%
									String user_id=(String)session.getAttribute("user_id");
									String userID=(String)request.getAttribute("userid");
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
						<li><a href="shop.jsp">Shop</a></li>
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
						<a href="index.html">홈</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">장바구니</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5">
					<form class="col-md-12" method="post">
						<div class="site-blocks-table">
							<table class="table table-bordered">
								<thead>

									<tr>
										<th class="product-thumbnail">상품 이미지</th>
										<th class="product-name">상품명</th>
										<th class="product-price">가격</th>
										<th class="product-quantity">수량</th>
										<th class="product-total">판매가</th>
										<th class="product-remove">삭제하기</th>
									</tr>
								</thead>
								<tbody>
									
									<c:forEach var="product" items="${productNameAndPrice}" varStatus="status">
										
										<tr>
											<td class="product-thumbnail"><img
												src="${product.img1_path}" alt="Image" class="img-fluid">
											</td>
											<td class="product-name">
												<h2 class="h5 text-black">${product.pro_name}</h2>
											</td>
											<td><span class="pro-price">${product.pro_price}</span>원</td>
											<td>
												<!-- 증감버튼 -->
												<div class="input-group mb-3" style="max-width: 120px;">
													<div class="input-group-prepend">
														<button data-index="${status.index}" class="btn btn-outline-primary js-btn-minus cart-minus-btn"
															type="button">&minus;</button>
													</div>
													<input type="text" class="form-control text-center"
														value="${product.pro_volume}" placeholder=""
														aria-label="Example text with button addon"
														aria-describedby="button-addon1">
													<div class="input-group-append">
														<button
															data-index="${status.index}" class="btn btn-outline-primary js-btn-plus btn-remove cart-plus-btn"
															type="button">&plus;</button>
													</div>
												</div>

											</td>
											<td>
												<!--판매가--> <span class="before-sale nowon">${product.pro_price}</span><span class="before-sale">원</span><br>
												<span class="last-price nowon">${product.pro_price*90/100*product.pro_volume}</span><span class="last-price">원</span>
											</td>

											<td><a href="CartDelete?proid=${product.pro_id}" class="btn btn-primary btn-sm">X</a></td>
										</tr>

									</c:forEach>


<!-- 장바구니 두 번째 샘플 행
									<tr>
										<td class="product-thumbnail"><img
											src="images/cloth_2.jpg" alt="Image" class="img-fluid">
										</td>
										<td class="product-name">
											<h2 class="h5 text-black">Polo Shirt</h2>
										</td>

										<td>$49.00</td>

										<td>
											<div class="input-group mb-3" style="max-width: 120px;">
												<div class="input-group-prepend">
													<button class="btn btn-outline-primary js-btn-minus"
														type="button">&minus;</button>
												</div>
												<input type="text" class="form-control text-center"
													value="1" placeholder=""
													aria-label="Example text with button addon"
													aria-describedby="button-addon1">
												<div class="input-group-append">
													<button class="btn btn-outline-primary js-btn-plus"
														type="button">&plus;</button>
												</div>
											</div>
										</td>
										<td><span class="before-sale">$49.00</span><br>$39.00
										</td>

										<td><a href="#" class="btn btn-primary btn-sm">X</a></td>
									</tr>
									 -->
								</tbody>
							</table>
						</div>
					</form>
				</div>

				<div class="row">
					<div class="col-md-6">
						<div class="row mb-5">

							<div class="col-md-6 mb-3 mb-md-0">
								<button class="btn btn-primary btn-sm btn-block update-add">Update
									Cart</button>
							</div>
							<div class="col-md-6">
								<button class="btn btn-outline-primary btn-sm btn-block">쇼핑
									이어하기</button>
							</div>
						</div>
						<!-- coupon쿠폰적용기능
            <div class="row">
              <div class="col-md-12">
                <label class="text-black h4" for="coupon">Coupon</label>
                <p>Enter your coupon code if you have one.</p>
              </div>
            
              <div class="col-md-8 mb-3 mb-md-0">
                <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
              </div>
              <div class="col-md-4">
                <button class="btn btn-primary btn-sm">Apply Coupon</button>
              </div>
              -->
					</div>
				</div>
				<div class="col-md-8 pl-4 payment">
					<div class="row justify-content-end">
						<div class="col-md-7">
							<div class="row">
								<div class="col-md-12 text-right border-bottom mb-5">
									<h3 class="text-black h4 text-uppercase">결제 금액</h3>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-6">
									<span class="text-black">상품 금액</span>
								</div>
								<div class="col-md-6 text-right">
									<strong class="text-black"><span class="before-sale-payment">0</span>원</strong>
								</div>
							</div>
							<div class="row mb-5">
								<div class="col-md-6">
									<span class="text-black">최종 결제 금액</span>
								</div>
								<div class="col-md-6 text-right">
									<strong class="text-black"><span class="last-payment">0</span>원</strong>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<button class="btn btn-primary btn-lg py-3 btn-block"
										onclick="window.location='checkout.jsp'">결제하기</button>
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
            <a href="#" class="block-6">
              <img src="images/hero_1.jpg" alt="Image placeholder" class="img-fluid rounded mb-4">
              <h3 class="font-weight-light  mb-0">Finding Your Perfect Shoes</h3>
              <p>Promo from  nuary 15 &mdash; 25, 2019</p>
            </a>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">203 Fake St. Mountain View, San Francisco, California, USA</li>
                <li class="phone"><a href="tel://23923929210">+2 392 3929 210</a></li>
                <li class="email">emailaddress@domain.com</li>
              </ul>
            </div>

            <div class="block-7">
              <form action="#" method="post">
                <label for="email_subscribe" class="footer-heading">Subscribe</label>
                <div class="form-group">
                  <input type="text" class="form-control py-4" id="email_subscribe" placeholder="Email">
                  <input type="submit" class="btn btn-sm btn-primary" value="Send">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
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
     <script>
     let quantity = document.getElementsByClassName("form-control text-center");//수량
		let product_price = document.getElementsByClassName("pro-price");//상품정가
		let before_sale = document.getElementsByClassName("before-sale nowon");//세일 전 상품가격(원 단위 없는)
		let last_price = document.getElementsByClassName("last-price nowon");//세일 후 상품가격(원 단위 없는)
		let last_payment= document.getElementsByClassName("last-payment");//총 결제 가격(원 단위 없는)
		let before_sale_payment=document.getElementsByClassName("before-sale-payment");//세일 전 총 결제 가격(원 단위 없는)
		let total_price=0;
		let before_sale_total_price=0;
		let minus_buttons=document.getElementsByClassName("cart-minus-btn");//수량 빼기
		let plus_buttons=document.getElementsByClassName("cart-plus-btn");// 수량 추가
		 
		
		function updatePrices() {
			for (let i = 0; i < quantity.length; i++) {
				product_price[i].textContent=Number(product_price[i].textContent.replace(/,/g,''))
				product_price[i].textContent=Number(product_price[i].textContent).toLocaleString('ko-KR')
				before_sale[i].textContent = (Number(product_price[i].textContent.replace(/,/g,'')) * Number(quantity[i].value)).toLocaleString('ko-KR');
				last_price[i].textContent = (Number(before_sale[i].textContent.replace(/,/g, '')) * 0.9).toLocaleString('ko-KR');
				
				before_sale_total_price+= Number(before_sale[i].textContent.replace(/,/g,''))
				total_price+=Number(last_price[i].textContent.replace(/,/g,''))
				
			}
			before_sale_payment[0].textContent=before_sale_total_price.toLocaleString('ko-KR');
			last_payment[0].textContent=total_price.toLocaleString('ko-KR');
			total_price=0;
			before_sale_total_price=0;
		}
		
			updatePrices();
			
			// plus버튼 누르면 수량value +1 변화 
			for (let i = 0; i < plus_buttons.length; i++) {
			    plus_buttons[i].addEventListener("click", function(event) {
			        let index = Number(event.target.getAttribute("data-index"));
			        //quantity[index].value=Number(quantity[index].value) + 1;
			        // 여기서 가격 업데이트 로직을 추가할 수 있습니다.
			         setTimeout(updatePrices, 0);  // 가격 업데이트를 약간 지연
			    });
			}
        // minus버튼 누르면 수량value -1 변화
			for (let i = 0; i < minus_buttons.length; i++) {
		    	minus_buttons[i].addEventListener("click", function(event) {
		        let index = Number(event.target.getAttribute("data-index"));
		        console.log(index)
			        if (Number(quantity[index].value) > 1) {  // 수량은 1보다 작아지면 안 되므로 검사
			        	//quantity[index].value=Number(quantity[index].value) - 1;
			        }
		        setTimeout(updatePrices, 0);  // 가격 업데이트를 약간 지연
        // 여기서 가격 업데이트 로직을 추가할 수 있습니다.
    });
}
			
	</script>
  </body>
</html>