<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>신발 추천 테스트</title>
    <style>
        /* 이미지의 크기를 설정합니다. */
        .image {
            width: 300px; /* 원하는 너비로 설정하세요. */
            height: 200px; /* 높이는 자동으로 조정됩니다. */
        }
    </style>
   
</head>
<body>
    <h1>신발 추천 테스트</h1>
    
    <div id="questionContainer">
        <p id="question">달리기? 걷기? 좋아하는 곳은?</p>
        <div id="images">
            <label>
                <input type="radio" name="image" id="imageAInput" value="걷기" style="display: none;">
                <img id="imageA" class="image" src="images/걷기.jpg" alt="걷기 이미지" onclick="nextQuestion()">
            </label>
            <label>
                <input type="radio" name="image" id="imageBInput" value="달리기" style="display: none;">
                <img id="imageB" class="image" src="images/달리기.jpg" alt="달리기 이미지" onclick="nextQuestion()">
            </label>
        </div>
    </div>

    <div id="result" style="display: none;">
        <p id="recommendation">당신에게 어울리는 신발 추천이 여기에 표시됩니다.</p>
    </div>

    <script type="text/javascript">
        var currentQuestion = 0; // 현재 질문 인덱스를 저장할 변수
        var selectedImages = {
            '걷기': 0,
            '달리기': 0
        }; // 선택한 이미지를 저장할 객체

        function nextQuestion() {
            var questions = [
                "달리기? 걷기? 좋아하는 곳은?",
                "산? 바다? 좋아하는 곳은?",
                "자갈? 아스팔트? 달리기 좋아하는 곳은?",
                "헬스장? 야외 운동시설? 좋아하는 곳은?",
                "빗길? 흙길? 어디가 좋으세요?"
                // 추가 질문들을 여기에 추가
            ];

            var imageSets = [
                ["images/걷기.jpg", "images/달리기.jpg"],
                ["images/산.jpg", "images/바다.jpg"],
                ["images/자갈길.jpg", "images/아스팔트.jpg"],
                ["images/헬스장.jpg", "images/야외운동시설.jpg"],
                ["images/빗길.jpg", "images/흙길.jpg"]
                // 이미지 세트를 추가
            ];

            if (currentQuestion < questions.length) {
                var selectedImage = document.querySelector('input[name="image"]:checked');
                if (selectedImage) {
                    // 사용자가 이미지를 선택한 경우에만 질문을 다음으로 이동
                    currentQuestion++;
                    selectedImages[selectedImage.value]++;
                }

                // 질문이 아직 남아있으면 다음 질문을 표시
                if (currentQuestion < questions.length) {
                    document.getElementById("question").textContent = questions[currentQuestion];
                    document.getElementById("imageA").src = imageSets[currentQuestion][0];
                    document.getElementById("imageB").src = imageSets[currentQuestion][1];
                } else {
                    // 마지막 질문 후 결과 표시
                    var resultContainer = document.getElementById("result");
                    var result = "당신에게 추천하는 신발은: ";
                    var recommendations = [];

                    // 선택한 이미지에 따라 결과를 정리
                    if (selectedImages['달리기'] >= selectedImages['걷기']) {
                        recommendations.push("달리기 신발");
                    }
                    if (selectedImages['걷기'] >= selectedImages['달리기']) {
                        recommendations.push("걷기 신발");
                    }

                    result += recommendations.join(", ");
                    resultContainer.textContent = result;
                    document.getElementById("images").style.display = "none";
                    resultContainer.style.display = "block";
                }
            }
        }
    </script>
</body>
</html>