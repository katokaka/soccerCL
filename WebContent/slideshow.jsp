<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>preview06｜jQueryを使ったスライダーの作り方とその仕組み</title>
<link rel="stylesheet" href="./stylecss/reset.css">
<style type="text/css">
.slider {
	width: 1034px;
	height: 681px;
	overflow: hidden;
	position: relative;
}

.slider .slideSet {
	position: absolute;
}

.slider .slide {
	width: 1024px;
	height: 681px;
	border: 1px solid #f00;
	float: left;
}

p.resizeimage.slide img {
	width: 100%;
}

.slider-position button{
	margin:20px 20px;
}

</style>
<script src="js/jquery-1.12.3.min.js"></script>
</head>
<body>
	<div class="slider">
		<div class="slideSet">
			<p class="resizeimage">
			<div class="slide">
				<img src="./img/real04.jpg">
			</div>
			<div class="slide">
				<img src="./img/real05.jpg">
			</div>
			<div class="slide">
				<img src="./img/baruserona05.jpg">
			</div>
			<div class="slide">
				<img src="./img/baruserona06.jpg">
			</div>
			<div class="slide">
				<img src="./img/dorutomunto05.jpg">
			</div>
			</p>
		</div>
	</div>
	<center>
		<div class="slider-position">
			<button class="slider-prev">←</button>
			<button class="slider-next">→</button>
		</div>
	</center>
	<script>
		var slideCurrent = 0; // 現在地を示す変数
		var slideWidth = $('.slide').outerWidth(); // .slideの幅を取得して代入
		var slideNum = $('.slide').length; // .slideの数を取得して代入
		var slideSetWidth = slideWidth * slideNum; // .slideの幅×数で求めた値を代入
		$('.slideSet').css('width', slideSetWidth); // .slideSetのスタイルシートにwidth: slideSetWidthを指定

		// アニメーションを実行する独自関数
		var sliding = function() {
			// slideCurrentが0以下だったら
			if (slideCurrent < 0) {
				slideCurrent = slideNum - 1;

				// slideCurrentがslideNumを超えたら
			} else if (slideCurrent > slideNum - 1) { // slideCUrrent >= slideNumでも可
				slideCurrent = 0;
			}
			$('.slideSet').stop().animate({
				left : slideCurrent * -slideWidth
			});
		}

		// 前へボタンが押されたとき
		$('.slider-prev').click(function() {
			slideCurrent--;
			sliding();
		});

		// 次へボタンが押されたとき
		$('.slider-next').click(function() {
			slideCurrent++;
			sliding();
		});
	</script>

</body>
</html>