<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover">

  <meta name="author" content="Dain Kim">

  <meta name="keywords" content="이미지 테스트, 나를 알아보는 10가지 질문, 10-things-test, 3분이미지테스트, 이미지테스트">
  <meta name="description" content="신발추천 테스트: 나는 어떤 기능이 필요할까">

  <meta property="og:type" content="website">
  <meta property="og:title" content="신발추천 테스트: 나는 어떤 기능이 필요할까">
  <meta property="og:description" content="사람들이 보는 나는 어떤 이미지일까?">
  <meta property="og:image" content="images/og-logo.jpg">
  <meta property="og:url" content="https://dev-dain.github.io/10-things-test/">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <link rel="shortcut icon" type="text/css" href="images/favicon.png">
  <link rel="appel-touch-icon-precomposed" href="images/favicon.png">
  <title>
    나를 알아보는 10가지 질문
  </title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/animation.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/header+footer.css">
  <link rel="stylesheet" href="css/welcome.css">
  <link rel="stylesheet" href="css/qna.css">
  <link rel="stylesheet" href="css/calc.css">
  <link rel="stylesheet" href="css/result.css">
  <!--[if lt ie 11]> 
    <script>
      alert('IE 11 미만 브라우저에서는 정상적으로 동작하지 않습니다.\n다른 브라우저(크롬, 파이어폭스 등)를 이용해주세요.');
    </script>
  <![endif]-->
</head>

<body>
  <div id="wrap">
    <header id="header">
      <button class="logo head" onclick=javascript:switchMode()></button>
    </header>
    <section id="welcome" class="container">
      <div id="title-box">
        <h1 class="title">
          The Ideal Shoes<br>
          For Your Conditions
        </h1>
        <h3 class="sec-tit">
          오늘 당신이 할 활동에<br>
          어떤 신발을 신을 것인가요?
        </h3>
        <span class="time-logo"></span>
        <div>소요 시간 : 3분 내외</div>
      </div>
      <hr class="w-line">
      <p class="w-line">
        <span id="p-tit">평소에 즐기는 활동이 있나요?</span><br>
        모든 활동에 신발이라는 장비는 꼭 필요합니다.<br>
        자신의 움직임에 맞는 신발을 신는 것은 매우 중요할 것입니다.<br>
        하지만 생활습관과 발의 모양에 맞지 않아 불편함을 느끼기도 합니다.<br>
        이 테스트를 통해 신발을 추천받고 최적의 활동 환경을 조성해보세요!
      </p>
      <hr class="w-line">
      <div id="name-input">
        <input type="text" placeholder="이름">
      </div>
      <p class="check-name warning"></p>
      <div class="start-wrap">
        <button class="start">시 작</button>
      </div>
    </section>
    <section id="qna" class="container">
      
      <div class="status-bar">
        <div class="status"></div>
      </div>
      <div class="q box"></div>
      <img class="q-img" style="display:none; height:300px;" alt="질문 관련 이미지">
      <div class="answer"></div>
    </section>
    <section id="calc">
      <div class="calc-bar">
        CALCULATING
        <div class="calc"></div>
      </div>
      <p class="wait">잠시 기다려주세요...</p>
    </section>
    <section id="result" class="container">
      <div id="score-box">
        <div class="p title"></div>
        <div class="point"></div>
        <div class="pin"></div>
        <div class="score-bar"></div>
      </div>
      <div id="desc-box">
        <div class="art"></div>
        <div class="result title"></div>
        <div class="res desc"></div>
        <span class="go-artist highlight" onclick=javascript:goArtist()>
          그림이 마음에 드시나요?
        </span>
      </div>
      <hr>
      <p>친구들과 공유하기</p>
      <div class="hash">#10_things_test #3분이미지테스트 #이미지테스트</div>
      <div id="share-box">
        <a onclick=javascript:tw() target="_blank" alt="Share on Twitter" title="트위터에 공유하기">
          <span class="tw"></span>
        </a>
        <a onclick=javascript:fb() target="_blank" alt="Share on Facebook" title="페이스북에 공유하기">
          <span class="fb"></span>
        </a>
        <a onclick=javascript:nv() target="_blank" alt="Share on Naver" title="네이버에 공유하기">
          <span class="nv"></span>
        </a>
        <a onclick=javascript:band() target="_blank" alt="Share on Naver Band" title="네이버 밴드에 공유하기">
          <span class="band"></span>
        </a>
      </div>
      <button onclick=javascript:copy() class="btn">링크 복사하기</button>
      <hr>
      <div id="intro-box">
        <div class="pro_pic"></div>
        <div class="art-name">껴리(GYEOLY)</div>
        <div class="artist desc">
          Sorry for painting<br>
          동식물과 장소를 가지고 페인팅을 합니다.<br><br>
          email: <span class="highlight">sallycool27@naver.com</span><br>
          instagram: <a href="https://www.instagram.com/gyeoly27" target="_blank" title="작가 인스타그램"><span
              class="highlight">gyeoly27</span></a>
        </div>
        <button class="art-sns btn">
          <a href="https://www.instagram.com/gyeoly27/" target="_blank" title="작가 인스타그램">
            작품 더 보기
          </a>
        </button>
      </div>
      <hr>
      <div class="caution">
        <p>
          사람은 서로 조금씩 달라서 6가지 이미지에 꼭 맞기는 어렵습니다.
          결과가 조금 맞지 않더라도 이런 면이 있음을 알고 강점에 주목해 보세요.
          좋은 평판은 어느새 당신의 단짝이 되어 있을 겁니다!<br><br>
          테스트가 재밌었다면
          <span class="go-share highlight" onclick=javascript:goShare()>공유하기</span>로 개발자를 도와주세요!
        </p>
      </div>
      <hr>
      <div class="caution">
        <p>
          이 테스트는 해외 웹사이트에 게재된 이미지 테스트를 한국어로 번역한 것입니다.<br>(원본 아래 참고)<br>
          <span class="warning">결과 페이지에 나오는 그림의 상업적 이용을 금지합니다.</span><br>
          해당 이미지의 저작권은 작가에게 있습니다.<br>
          <a href="https://www.instagram.com/gyeoly27/" target="_blank" title="작가 인스타그램">그림 작가</a>와 연락하시려면
          <a href="mailto:sallycool27@naver.com" target="_blank" title="작가에게 이메일하기">이메일</a>을 부탁드립니다.<br>
          테스트와 공유는 자유롭게 하시면 됩니다.<br>
          <a href="https://dev-dain.tistory.com" target="_blank" title="개발자 블로그">개발자</a>와 연락하시려면
          <a href="mailto:dev.dain.k@gmail.com?subject=이미지테스트 페이지 문의합니다" target="_blank" title="개발자에게 이메일하기">이메일</a>을
          부탁드립니다.<br>
          고맙습니다!
        </p>
      </div>
      <hr>
      <button class="go-origin btn">
        <a href="https://www.personalityquiz.net/profiles/impressions.html" target="_blank" title="출처 영문 웹사이트">
          출처 영문 웹사이트 보기
        </a>
      </button>
    </section>
    <footer id="footer">
      <div>
        <span class="highlight">Dain Kim</span>
        © 2020
      </div>
      <a href="https://github.com/dev-dain" target=_blank title="개발자 깃허브">
        <div class="logo foot github"></div>
      </a>
      <a href="https://dev-dain.tistory.com" target=_blank title="개발자 블로그">
        <div class="logo foot tistory"></div>
      </a>
    </footer>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="js/darkmode.js"></script>
  <script src="js/question.js"></script>
  <script src="js/testmain.js"></script>
  <script src="js/share.js"></script>
</body>

</html>