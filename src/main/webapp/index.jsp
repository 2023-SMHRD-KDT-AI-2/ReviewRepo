<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <script src="https://kit.fontawesome.com/9dd5ee0fd1.js" crossorigin="anonymous"></script>
  </head>
  <body>
   <!-- popup(팝업창) -->
    <div class="popBg">
        <div class="popcon">
          <br>
          <p><img src="./images/cloth_2.jpg" width="500px" height="400px"></p>
          <button type="button" class="ck"><span>오늘하루보지않음</span></button>
          <button type="button" class="close-btn">X 닫기</button>
        </div>
    </div>
    

  <!-- login(로그인) -->
      <div class="loginBg">
          <div class="login-form">
              <form>
                  <h3>로그인</h3>
                  <input type="text" name="email" class="text-field" placeholder="아이디" style="border: 1px solid;">
                  <input type="password" name="password" class="text-field" placeholder="비밀번호" style="border: 1px solid;">
                  <input type="submit" class="submit-btn" value="로그인">
              </form>
      
              <div class="links">
                  <a href="#" class="join">회원가입</a>&nbsp;&nbsp;
                  <a href="#">비밀번호를 잊어버리셨나요?</a>
               <!-- 카카오 로그아웃 버튼 -->
    			
              <img id="kakao-login-button" src="./images/kakaoLogin.png" value="kakaoLogin" class="loginApi"><br>
              <button id="kakao-logout-button" style="display: none;">카카오 로그아웃</button>
             
              <a href="#" class="fa-regular fa-x"></a>
          	</div>
      	</div>
      </div>
   <script type="text/javascript">
        // 카카오 SDK 초기화
        Kakao.init('1860b45a3b2095c23c88e54daa78ccb8');

        // 로그인 버튼 클릭 시 실행할 함수
        document.getElementById('kakao-login-button').addEventListener('click', function () {
            Kakao.Auth.loginForm({
                success: function (response) {
                    // 카카오 로그인 성공 시 사용자 정보 가져오기
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function (response) {
                            var userName = response.properties.nickname;

                            // 사용자 정보 출력
                            document.getElementById('kakao-user-name').innerHTML = userName+'님 환영합니다.' ;

                            document.getElementById('kakao-login-button').style.display = 'none';
                            document.getElementById('kakao-logout-button').style.display = 'block';
                            // 사용자 정보 콘솔에 출력
                            console.log('사용자 정보:', response);

                            // 성공 시 콘솔에 메시지 출력
                            console.log('카카오 로그인 성공');
                            
                        },
                        fail: function (error) {
                            console.log(error);
                        }
                    });
                },
                fail: function (error) {
                    console.log(error);
                }
            });
        });

        // 카카오 로그아웃 버튼 클릭 시 실행할 함수
        document.getElementById('kakao-logout-button').addEventListener('click', function () {
            // 카카오 로그아웃 처리
            Kakao.Auth.logout(function () {
                document.getElementById('kakao-user-name').innerHTML = '';
                document.getElementById('kakao-login-button').style.display = 'block';
                document.getElementById('kakao-logout-button').style.display = 'none';
            });
        });
    </script>

  <!-- regist(회원가입) -->
  <form id="regForm" action="#">
    <h1>회원가입</h1>
    <!-- One "tab" for each step in the form: -->
      <div class="tab">
        <div>
          <div class="col-md-12 g-3">
            <label for="inputId" class="form-label">아이디</label>
            <input type="text" class="form-control" name ="user_pw" id="inputId" oninput="this.className = ''">
          </div>
          <div class="col-md-12">
            <label for="inputPassword4" class="form-label">비밀번호</label>
            <input type="password" class="form-control" name ="user_pw2" id="inputPassword4" oninput="this.className = ''">
          </div>
          <div class="col-12">
            <label for="inputName4" class="form-label">이름</label>
            <input type="text" class="form-control" name="user_name" id="inputName4" oninput="this.className = ''">
          </div>
          <div class="form-check col-6">
            <input class="form-check-input" type="radio" name="gender" id=" gender1" oninput="this.className = ''" value="남자">
            <label class="form-check-label" for="gender1">남성</label>
          </div>
          <div class="form-check col-6">
            <input class="form-check-input" type="radio" name="gender" id="gender2" oninput="this.className = ''" value="여자">
            <label class="form-check-label" for="gender2">여성</label>
          </div>
          <div class="col-md-12">
            <label for="inputAddress" class="form-label">우편번호</label>
            <input type="text" id="zip-code" class="form-control" oninput="this.className = ''">
          </div>
          <div class="col-md-12">
            <input type="button" class="form-control zipSearch" onclick="execDaumPostcode()" oninput="this.className = ''" value="우편번호 찾기">
          </div>
          <div class="col-md-12">
            <label for="inputAddress1" class="form-label">도로명주소</label>
            <input type="text" id="address-1" class="form-control regist_2 txt_addr" oninput="this.className = ''">
          </div>
          <div class="col-md-12">
            <label for="inputAddress2" class="form-label">상세주소</label>
            <input type="text" id="address-2" class="form-control regist_2 zipCode" oninput="this.className = ''">
          </div>
          <div class="col-12">
            <label for="inputPhone" class="form-label">연락처</label>
            <input type="text" id="inputPhone" class="form-control phone" oninput="this.className = ''">
          </div>
          <div class="col-md-12">
            <label for="inputEmail4" class="form-label">email</label>
            <input type="email" class="form-control" name="email" id="inputEmail4" oninput="this.className = ''">
          </div>
        </div>
      </div>
    
      <div class="tab">
        <div>
          <div>
            <div>
              <label for="footSize" class="form-label">발 사이즈</label>
              <input type="text" id="footSize" name="footSize" class="form-input foot foot_size" oninput="this.className = ''">
            </div>
            <div>
              <label for="footWidth" class="form-label">발 볼 넓이</label>
              <input type="text" id="footWidth" name="footWidth" class="form-input foot foot_width" oninput="this.className = ''">
            </div>
            <div>
              <label for="footHeight" class="form-label">발 등 높이</label>
              <input id="footHeight" name="footHeight" class="form-input" oninput="this.className = ''" />
            </div>
            <div class="col-6">
              <input type="radio" id="footFlat" name="footFlat"  value="유" class="form-check-input" oninput="this.className = ''" />
              <label for="footFlat" class="form-check-label">유</label>
            </div>
            <div class="col-6">
              <input type="radio" id="footFlat1" name="footFlat" value="무" class="form-check-input" oninput="this.className = ''" />
              <label for="footFlat1" class="form-check-label">무</label>
            </div>
          </div>
      
          <div>
            <label for="ice-cream-choice">선호 하는 신발 종류</label>
            <input list="ice-cream-flavors2" id="ice-cream-choice2" class="foot" name="ice-cream-choice2" oninput="this.className = ''" />
          </div>
        </div>
      </div>
    </div>
  
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
      
    <div style="overflow:auto;">
      <div style="float:right;">
        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
        <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
      </div>
    </div>
    <!-- Circles which indicates the steps of the form: -->
    <div style="text-align:center;margin-top:40px;">
      <span class="step"></span>
      <span class="step"></span>
      <span class="step"></span>
    </div>
  </form>

  <!-- header -->
  <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 text-center">
              <div class="site-logo">
                <a href="index.jsp" class="js-logo-clone">In Foot <br> Out Foot</a>
              </div>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 site-search-icon text-left">
              <form action="productSearch" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <!-- text부분을 데이터베이스에 가져와서 비교작업!! -->
                <input type="text" class="form-control border-0" name="search" placeholder="Search">
              </form>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                   <!-- 사용자 이름 출력 -->
    			  <li><div id = "kakao-user-name"></div></li>
                  <li><a href="#"><span class="icon icon-person"></span></a></li>
                  <!-- <li><a href="#"><span class="icon icon-heart-o"></span></a></li> -->
                  <li>
                    <a href="CartPage" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">2</span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li class="has-children active">
              <a href="index.jsp">워킹화</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
                <li class="has-children">
                  <a href="#">Sub Menu</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="has-children">
              <a href="about.jsp">런닝화</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
              </ul>
            </li>
            <li class="has-children">
              <a href="shop.jsp">트레킹화</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
              </ul>
            </li>
            <li class="has-children">
              <a href="#">등산화</a>
              <ul class="dropdown">
                <li><a href="#">Menu One</a></li>
                <li><a href="#">Menu Two</a></li>
                <li><a href="#">Menu Three</a></li>
              </ul>
            </li>
            <li class="has-children">
              <a href="shop.html">Shop</a>
              <ul class="dropdown">
                <li class="has-children">
                  <a href="#">워킹화</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="#">런닝화</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="#">트레킹화</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="#">등산화</a>
                  <ul class="dropdown">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="site-blocks-cover" style="background-image: url(images/working.png);"  data-aos="fade">
      <div class="container">
        <div class="row align-items-start align-items-md-center justify-content-end">
          <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
            <h1 class="mb-2">여기 있어요</h1>
            <div class="intro-text text-center text-md-left">
              <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer accumsan tincidunt fringilla. </p>
              <p>
                <a href="#" class="btn btn-sm btn-primary">Shop Now</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- <div class="site-section site-section-sm site-blocks-1">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
            <div class="icon mr-4 align-self-start">
              <span class="icon-refresh2"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Returns</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
            <div class="icon mr-4 align-self-start">
              <span class="icon-help"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Customer Support</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    
    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>인기 Top10</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_3.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
            </div>
            </a>
          </div>
          <!-- banner -->
          <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0 banner">
            <a target="_blank" href="popup_banner.jsp">
              <img src="./images/working.png" width= "200" height="300" border="1">
            </a>
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Featured Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_3.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section block-8">
      <div class="container">
        <div class="row justify-content-center  mb-5">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Big Sale!</h2>
          </div>
        </div>
        <div class="row align-items-center">
          <div class="col-md-12 col-lg-7 mb-5">
            <a href="#"><img src="images/blog_1.jpg" alt="Image placeholder" class="img-fluid rounded"></a>
          </div>
          <div class="col-md-12 col-lg-5 text-center pl-md-5">
            <h2><a href="#">50% less in all items</a></h2>
            <p class="post-meta mb-4">By <a href="#">Carl Smith</a> <span class="block-8-sep">&bullet;</span> September 3, 2018</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam iste dolor accusantium facere corporis ipsum animi deleniti fugiat. Ex, veniam?</p>
            <p><a href="#" class="btn btn-primary btn-sm">Shop Now</a></p>
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
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="js/main.js"></script>
  <script src="js/button.js"></script>

  </body>
</html>