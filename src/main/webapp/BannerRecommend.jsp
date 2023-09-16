<%@page import="com.smhrd.bannerModel.BannerRecommendList"%>
<%@page import="com.smhrd.bannerModel.BannerDAO"%>
<%@page import="com.smhrd.bannerModel.BannerResult"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="css/style.css">
<link rel="stylesheet"  href="css/bootstrap.min.css">
<link rel="stylesheet"  href="css/aos.css">
<link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

	<%
	
	BannerResult result = new BannerResult();
	BannerDAO dao = new BannerDAO();
	
	String userScoresJson = request.getParameter("userScores");
	Gson gson = new Gson();
	BannerResult bannerresultObject = gson.fromJson(userScoresJson, BannerResult.class);
	
	System.out.println("사용자 입력값 : "+bannerresultObject);
	System.out.println("쿠션값 : "+bannerresultObject.getF_cushion());
	
	result.setF_wind(bannerresultObject.getF_wind());
	result.setF_durability(bannerresultObject.getF_durability());
	result.setF_slip(bannerresultObject.getF_slip());
	result.setF_cushion(bannerresultObject.getF_cushion());
	result.setF_water(bannerresultObject.getF_water());
	result.setF_inheight(bannerresultObject.getF_inheight());
	result.setF_inwidth(bannerresultObject.getF_inwidth());
	
	ArrayList<BannerRecommendList> bannerlist=(ArrayList)dao.bannerRecommendList(result);
	
	session.setAttribute("bannerlist", bannerlist);
	%>
	
	
	<div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>당신의 활동 환경에 적절한 신발입니다</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            <c:forEach var="banner" items="${bannerlist}" varStatus="status">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="${banner.img1Path}" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">${banner.productName}</a></h3>
                    <p class="before-sale">${banner.productPrice}</p>
                    <!-- <p class="text-primary font-weight-bold">${ranklist.pro_cost}</p> -->
                     <!--<h3 >${ranklist.pro_category}</h3> -->
                  </div>
                </div>
              </div>
                       </c:forEach>
              
            </div>
            </a>
          </div>
        </div>
      </div>
    </div>
	
	
	<%
	
	
	RequestDispatcher rd = request.getRequestDispatcher("");
	
	%>
	  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
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