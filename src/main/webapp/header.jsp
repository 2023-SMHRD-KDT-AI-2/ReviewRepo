<%@page import="com.smhrd.model.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
	<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
	<link rel="stylesheet" href="fonts/icomoon/style.css">
		
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
		
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="css/regist.css">
	<link rel="stylesheet" href="css/button.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	
	
<script src="https://kit.fontawesome.com/9dd5ee0fd1.js"
	crossorigin="anonymous"></script>
<!-- 카카오 로그인 SDK 로드 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="carousel.scss">

</head>
<body>
	<!-- login(로그인) -->
	<div class="loginBg">
	<div class="login-form">
		<form class="loginForm">
			<h3>로그인</h3>
			<input type="text" name="email" class="text-field" placeholder="아이디"
				style="border: 1px solid;"> <input type="password"
				name="password" class="text-field" placeholder="비밀번호"
				style="border: 1px solid;"> <input type="submit"
				class="submit-btn" value="로그인">
		</form>

		<div class="links">
			<a href="#" class="join">회원가입</a>&nbsp;&nbsp; <a href="#">비밀번호를
				잊어버리셨나요?</a>
		</div>

		<!-- 카카오 로그아웃 버튼 -->

		<img id="kakao-login-button" src="./images/kakaoLogin.png"
			value="kakaoLogin" class="loginApi"><br>
		<button id="kakao-logout-button" style="display: none;">카카오
			로그아웃</button>

		<a href="#" class="fa-regular fa-x"></a>
	</div>
	</div>
	<script type="text/javascript">
		// 카카오 SDK 초기화
		Kakao.init('1860b45a3b2095c23c88e54daa78ccb8');

		// 로그인 버튼 클릭 시 실행할 함수
		document
				.getElementById('kakao-login-button')
				.addEventListener(
						'click',
						function() {
							Kakao.Auth
									.loginForm({
										success : function(response) {
											// 카카오 로그인 성공 시 사용자 정보 가져오기
											Kakao.API
													.request({
														url : '/v2/user/me',
														success : function(
																response) {
															var userName = response.properties.nickname;

															// 사용자 정보 출력
															document
																	.getElementById('kakao-user-name').innerHTML = userName
																	+ '님 환영합니다.';

															document
																	.getElementById('kakao-login-button').style.display = 'none';
															document
																	.getElementById('kakao-logout-button').style.display = 'block';
															// 사용자 정보 콘솔에 출력
															console.log(
																	'사용자 정보:',
																	response);

															// 성공 시 콘솔에 메시지 출력
															console
																	.log('카카오 로그인 성공');

														},
														fail : function(error) {
															console.log(error);
														}
													});
										},
										fail : function(error) {
											console.log(error);
										}
									});
						});

		// 카카오 로그아웃 버튼 클릭 시 실행할 함수
		document
				.getElementById('kakao-logout-button')
				.addEventListener(
						'click',
						function() {
							// 카카오 로그아웃 처리
							Kakao.Auth
									.logout(function() {
										document
												.getElementById('kakao-user-name').innerHTML = '';
										document
												.getElementById('kakao-login-button').style.display = 'block';
										document
												.getElementById('kakao-logout-button').style.display = 'none';
									});
						});
	</script>
	<!-- regist(회원가입) -->
	<form id="regForm" action="JoinService">
		<h1>회원가입</h1>
		<!-- One "tab" for each step in the form: -->
		<div class="tab">
			<div>
				<div class="col-md-12 g-3">
					<label for="inputId" class="form-label">아이디</label> <input
						type="text" class="form-control" name="user_id" id="inputId"
						oninput="this.className = ''">
				</div>
				<div class="col-md-12">
					<label for="inputPassword4" class="form-label">비밀번호</label> <input
						type="password" class="form-control" name="user_pw"
						id="inputPassword4" oninput="this.className = ''">
				</div>
				<div class="col-12">
					<label for="inputName4" class="form-label">이름</label> <input
						type="text" class="form-control" name="user_name" id="inputName4"
						oninput="this.className = ''">
				</div>
				<div class="gender_margin">
					<div class="form-check col-6-1">
						<label class="form-check-label" for="gender">성별</label> <input
							class="form-check-input" type="radio" name="user_gender"
							id="gender1" oninput="this.className = ''" value="남자"> <label
							class="form-check-label" for="gender1">남성</label>
					</div>
					<div class="form-check col-6-1">
						<input class="form-check-input" type="radio" name="user_gender"
							id="gender2" oninput="this.className = ''" value="여자"> <label
							class="form-check-label" for="gender2">여성</label>
					</div>
				</div>
				<div class="col-12">
					<label for="Age" class="form-label">나이</label> <input type="text"
						class="form-control" name="age" id="Age"
						oninput="this.className = ''">
				</div>

				<div class="col-md-12">
					<label for="inputAddress" class="form-label">우편번호</label> <input
						type="text" name="zipNum" id="zip-code" class="form-control"
						oninput="this.className = ''">
				</div>
				<div class="col-md-12">
					<input type="button" class="form-control zipSearch"
						onclick="execDaumPostcode()" oninput="this.className = ''"
						value="우편번호 찾기">
				</div>
				<div class="col-md-12">
					<label for="inputAddress1" class="form-label">도로명주소</label> <input
						type="text" id="address-1" name="address1"
						class="form-control regist_2 txt_addr"
						oninput="this.className = ''">
				</div>
				<div class="col-md-12">
					<label for="inputAddress2" class="form-label">상세주소</label> <input
						type="text" id="address-2" name="address2"
						class="form-control regist_2 zipCode"
						oninput="this.className = ''">
				</div>
				<div class="col-12">
					<label for="inputPhone" class="form-label">연락처</label> <input
						type="text" id="inputPhone" name="phone"
						class="form-control phone" oninput="this.className = ''">
				</div>
				<div class="col-md-12">
					<label for="inputEmail4" class="form-label">email</label> <input
						type="email" class="form-control" name="email" id="inputEmail4"
						oninput="this.className = ''">
				</div>
			</div>
		</div>

		<div class="tab">
			<div>
				<div>
					<div>
						<label for="footSize" class="form-label">발 사이즈</label> <input
							type="text" id="footSize" name="foot_Size"
							class="form-check-input foot foot_size"
							oninput="this.className = ''">
					</div>

					<div class="foot_margin">
						<label for="footWidth" class="form-label">발 볼 넓이</label>
						<div class="col-6 footWidthClass">
							<label for="footWidth" class="form-label">넓음</label> <input
								type="radio" id="footWidth" name="foot_width"
								class="form-check-input foot foot_width"
								oninput="this.className = ''">
						</div>
						<div class="col-6 footWidthClass">
							<label for="footWidth" class="form-label">보통</label> <input
								type="radio" id="footWidth1" name="foot_width"
								class="form-check-input foot foot_width"
								oninput="this.className = ''">
						</div>
						<div class="col-6 footWidthClass">
							<label for="footWidth" class="form-label">좁음</label> <input
								type="radio" id="footWidth2" name="foot_width"
								class="form-check-input foot foot_width"
								oninput="this.className = ''">
						</div>
					</div>

					<div class="foot_margin">
						<label for="footHeight" class="form-check-label">발 등 높이</label>
						<div class="col-6 footHeightClass">
							<label for="footHeight" class="form-check-label">높음</label> <input
								type="radio" id="footHeight" name="foot_height" value="높음"
								class="form-check-input" oninput="this.className = ''" />
						</div>
						<div class="col-6 footHeightClass">
							<label for="footFlat1" class="form-check-label">보통</label> <input
								type="radio" id="footHeight1" name="foot_height" value="보통"
								class="form-check-input" oninput="this.className = ''" />
						</div>
						<div class="col-6 footHeightClass">
							<label for="footFlat1" class="form-check-label">낮음</label> <input
								type="radio" id="footHeight2" name="foot_height" value="낮음"
								class="form-check-input" oninput="this.className = ''" />
						</div>
					</div>

					<div class="foot_margin">
						<label for="footFlat" class="form-check-label foot_flat">평발</label>
						<div class="col-6 footFlatClass">
							<label for="footFlat" class="form-check-label">유</label> <input
								type="radio" id="footFlat" name="foot_flat" value="유"
								class="form-check-input" oninput="this.className = ''" />
						</div>
						<div class="col-6 footFlatClass">
							<label for="footFlat1" class="form-check-label">무</label> <input
								type="radio" id="footFlat1" name="foot_flat" value="무"
								class="form-check-input" oninput="this.className = ''" />
						</div>
					</div>
				</div>

				<div>
					<label for="ice-cream-choice">선호 하는 신발 종류</label> <input
						list="ice-cream-flavors2" id="ice-cream-choice2" class="foot"
						name="ice-cream-choice2" oninput="this.className = ''" />
				</div>
			</div>
		</div>





		<!-- 
      <div class="tab">
        <div>
          <div>
            <label></label>
            <input type="">
          </div>
          <div>
            <label></label>
          </div>
        </div>
      </div>
      
       -->

		<div style="overflow: auto;">
			<div style="float: right;">
				<button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
				<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
			</div>
		</div>
		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align: center; margin-top: 40px;">
			<span class="step"></span> <span class="step"></span> <span
				class="step"></span>
		</div>
	</form>

	<!-- banner -->
	<div class="banner">
		<a target="_blank" href="BannerTest.jsp"> <img
			src="./images/working.png" width="200" height="300" border="1">
		</a>
	</div>

	<!-- header -->


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
                	String user_id =(String) session.getAttribute("user_id");
                	if (session.getAttribute("user_id") != null) {
                		user_id = (String)session.getAttribute("user_id");
                	}
                
                %>
                <% if (user_id == null){%>
                  <!-- 사용자 이름 출력 -->
    			  <li><div id = "user_name"></div></li>
                  <li><a href="#"><span class="icon icon-person"></span></a></li>
                  
                  <% } else if (user_id != null){%>
                  <li> <span style="color: black; text-decoration: underline; text-underline-position:under;"><strong>${info.user_id}</strong></span>님 환영합니다</li>
                  <li><a href="LogoutService"><span class="icon icon-person"></span></a></li>
                  
                  <li>
                 <%  System.out.println(user_id);%>
                    <a href="CartPage?userid=${user_id}" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      
                     <% CartDAO cartDao= new CartDAO();
                     System.out.println(user_id);
                     
                      int countCart=cartDao.HowManyProductsInTheCart(user_id);%>
                      <span class="count"><%=countCart%></span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                  <%} %>
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
						<li class="has-children active"><a href="index.jsp">워킹화</a>
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
						<li class="has-children"><a href="about.jsp">런닝화</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
							</ul></li>
						<li class="has-children"><a href="shop.jsp">트레킹화</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
							</ul></li>
						<li class="has-children"><a href="#">등산화</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
							</ul></li>
						<li class="has-children"><a href="shop.jsp">Shop</a>
							<ul class="dropdown">
								<li class="has-children"><a href="#">워킹화</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul></li>
								<li class="has-children"><a href="#">런닝화</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul></li>
								<li class="has-children"><a href="#">트레킹화</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul></li>
								<li class="has-children"><a href="#">등산화</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		
		<script src="js/jquery-3.3.1.min.js"></script>
				<script src="js/jquery-ui.js"></script>
				<script src="js/popper.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/owl.carousel.min.js"></script>
				<script src="js/jquery.magnific-popup.min.js"></script>
				<script src="js/aos.js"></script>
				<script
					src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script src="js/main.js"></script>
				<script src="js/button.js"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
      			<script src="carousel.js"></script>
</body>
</html>