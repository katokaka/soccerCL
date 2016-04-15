<!--
-@author T.Senna 5/21
-@author K.Mizuno 5/21
-@author T.Okamoto 5/21
-@version 1.0
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="stylecss/bootstrap-select.min.css" rel="stylesheet" />
<link href="stylecss/Goods.css" rel="stylesheet">
<link href="img/fab.ico" rel="shortcut icon" />
<!-- favicon -->
<link href="stylecss/animate.css" rel="stylesheet">
<!-- animation -->
<link href="http://cdn.jsdelivr.net/animatecss/3.1.0/animate.css"
	rel="stylesheet" />
<!-- animation -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- jQiery -->
<script type="text/javascript" src="js/wow.min.js"></script>
<!-- スクロールした時にアニメーションが発動するjs -->
<script type="text/javascript">
<!-- スクロールの記述 -->
	$(function() {
		$('a[href^=#]').click(function() {
			var speed = 1000;
			var href = $(this).attr("href");
			var target = $(href == "#" || href == "" ? 'html' : href);
			var position = target.offset().top;
			$("html, body").animate({
				scrollTop : position
			}, speed, "swing");
			return false;
		});
	});
	function Gocart() {
		if (document.forms.gocart.go.value == 1) {
			var element = document.getElementById("cart");
			var x = element.offsetLeft;
			var y = element.offsetTop;
			window.scrollTo(0, y);
		}
	}
</script>

<title>SoccerMania</title>
<script src="js/jquery-1.11.2.js"></script>
</head>
<style type="text/css">
#img-angle {
	transform: rotateZ(10deg);
}
</style>
<body onload="Gocart()">
	<div id="backimg">
		<s:form name="gocart">
			<s:hidden name="go" value="%{go}" />
		</s:form>

		<!-- fixed navigationここから -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Stardusts </a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="#about">About</a></li>
						<li><a href="#coffee">Coffee</a></li>
						<li><a href="#premium">Only Premium</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li></li>
						<li><a href="#top"> <span
								class="glyphicon glyphicon-hand-up" aria-hidden="true"></span></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- fixed navigationここまで -->

		<a href="#top" id="top"></a>
		<!-- スクロールでここまで飛ぶ -->
		<br>

		<!-- トップ画面 -->
		<jsp:include page="slideshow02.jsp" />
		<!-- <div> -->
		<!-- 	<img class="topimg" src="img/GoodsTop2.jpg" alt="トップ画面" />
			下地
			<div class="animated fadeIn" data-wow-delay="0s">
				<img class="topimg" src="img/Title.png" alt="ロゴ"
					style="position: absolute">
				重ねるロゴ
			</div>
		</div> -->

		<a href="#top" id="bottom"></a>
		<!-- トップへスクロールする場所 -->
		<!-- ボタンここから -->
		<s:if test="%{#session.userName==null}">
			<div class="Premium-button">
				<s:form action="GoLoginAction">
					<button type="submit" class="ghost-button action">Premium
						Login</button>
				</s:form>
			</div>
			<div class="Twitter-button">
				<s:form action="GoTwitterAction">
					<button type="submit" class="ghost-button action">Twitter
						OAuth</button>
				</s:form>
			</div>
		</s:if>
		<!-- ボタンここまで -->

		<!-- h1 -->
		<h1 align="center">
			<s:if test="%{#session.userName == null}">
				<a href="#bottom"></a>
			</s:if>
			<s:else>
				<s:property value="#session.userName" />様<br>
				<br>
			</s:else>
			<s:property value="#session.shopName" />
			へようこそ！
		</h1>
		<br>
		<!-- h1ここまで -->

		<!-- 商品ドキュメント -->
		<div class="container">
			<div class="row">
				<div class="col-xs-7 col-sm-7 col-md-7">
					<a href="#top" id="about"></a><br> <br> <br>
					<div align="center">
						<div class="wow animated fadeInDownBig" data-wow-offset="1">
							<h3>
								注目の試合、注目の観光スポットの贅沢セット !!<br>
							</h3>
						</div>
					</div>
					<br> <font size="3" color="#424242">
						コーヒーのロースト(焙煎度)は、8段階に分けられ、味や香りの特徴は以下の通り。
						しかし、ライトやシナモンはやや酸味が強く出てしまうため、日本ではほぼ飲まれません。
						日本で一般的に飲まれているのは下記のうちミディアム・ローストからイタリアンローストまでの6種類となっています。
						是非お好みのローストをお探し、ご注文下さい。<br> <br> <br>
					</font>
				</div>
				<div class="col-xs-5 col-sm-5 col-md-5">
					<br> <br> <br> <br>
					<div class="frame">
						<div align="center">
							<img class="imgsizing" id="img-angle" src="img/kurashiko01.jpg">
						</div>
					</div>
				</div>
			</div>
			<!-- //row// -->

			<!-- table1ここから -->
			<div align="center">
				<table class="table table-bordered">
					<tr class="active">
						<th>
						<th class="col-xs-3 col-sm-3 col-md-3">試合
						<th class="col-xs-6 col-sm-6 col-md-6">特徴 <s:form
								action="GoMatchDetailAction">
								<tr class="active">
									<input type="hidden" name="matchName" value="レアルマドリードVSバルセロナ"/>
									<td><s:submit type="button" value="詳細へ" />
									<td>レアルマドリード VS バルセロナ</td>
									<td>世界が大注目のクラシコ の観戦、カ ンプ・ノウへの観光などのバルサファンには堪らないプラン!!</td>
								</tr>
							</s:form> <s:form action="GoMatchDetailAction">
								<tr class="active">

									<td><s:submit value="詳細へ" /></td>

									<td>
										<div name="matchName" value="">バルセロナVSレアルマドリード</div>
									</td>

									<td>世界が大注目のクラシコ の観戦、カ ンプ・ノウへの観光などのバルサファンには堪らないプラン!!</td>
								</tr>
							</s:form> <s:form action="GoMatchDetailAction">
								<tr class="active">
									<td><s:submit type="button" value="詳細へ"
											formaction="GoMatchDetailAction" /></td>
									<td>
										<div name="matchName" value="">ドルトムントVSリバプール</div>
									</td>
									<td>香川の恩師グロップとの師弟対決!!ドルトムントの本拠地、ヴェストファーレンシュタディオンへの観光など<br>香川ファンには堪らないプラン!!
									</td>
								</tr>
							</s:form> <s:form action="GoMatchDetailAction">
								<tr class="active">
									<td><s:submit type="button" value="詳細へ"
											formaction="GoMatchDetailAction" /></td>
									<td>
										<div name="matchName" value="">ドルトムントVSバイエルン</div>
									</td>
									<td>世界が大注目のドイツ天王山を決める試合!!ドルトムントの本拠地、ヴェストファーレンシュタディオンへの観光など<br>香川ファンには堪らないプラン!!
									</td>
								</tr>
							</s:form>
					<tr class="active">
						<td>シティ・ロースト<br>焙煎18分・L値：18.5
						<td>コーヒーの味が最も豊かに出るタイプ。
					<tr class="active">
						<td>フルシティ・ロースト<br>焙煎19分・L値：16.8
						<td>酸味が少なく、やや苦味が強く出る。エスプレッソにも使えるうまみが出てくる。
					<tr class="active">
						<td>フレンチ・ロースト<br>焙煎20分・L値：15.5
						<td>エスプレッソやアイスコーヒーに最適。苦味が豊富に出てくる。
					<tr class="active">
						<td>イタリアン・ロースト<br>焙煎22分・L値：14.2
						<td>カプチーノ、エスプレッソに最適。酸味はまったく無く、苦味とうまみが強く出る。そのため、ミルクなどで甘さを加えて飲むのに適している。

						
				</table>
				<!-- table1ここまで -->
			</div>
			<!-- //container// -->
		</div>
		<footer>
			<div align="center">Copyright SoccerMania All rights reserved.</div>
			<br>
		</footer>

		<!-- scriptここから -->
		<script src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
		<script>
			$(function() {
				var slideWidth = $('.slide').outerWidth(); // .slideの幅を取得して代入
				var slideNum = $('.slide').length; // .slideの数を取得して代入
				var slideSetWidth = slideWidth * slideNum; // .slideの幅×数で求めた値を代入
				$('.slideSet').css('width', slideSetWidth); // .slideSetのスタイルシートにwidth: slideSetWidthを指定
				var sliding = function() {
					$('.slideSet').animate({
						left : -slideWidth
					});
				}
				$('.slider-next').click(function() {
					sliding();
				});
			});
		</script>
		<script>
			$(function() {
				$(".dropdown-menu li a").click(
						function() {
							$(this).parents('.dropdown').find(
									'.dropdown-toggle').html(
									$(this).text()
											+ ' <span class="caret"></span>');
							$(this).parents('.dropdown').find(
									'input[name="dropdown-value"]').val(
									$(this).attr("data-value"));
						});
			});
		</script>
		<!-- セレクトタグ用 -->

		<script type="text/javascript">
			$('.selectpicker').selectpicker({
				style : 'btn-default',
				size : 8
			});
		</script>


		<script type="text/javascript">
			$(window).on('load', function() {
				$('.selectpicker').selectpicker({
					'selectedText' : 'cat'
				});
			});
		</script>
		<script type="text/javascript">
			function check() {
				if (window.confirm('店舗一覧画面に戻ってよろしいですか？\n（カート情報とログイン情報は破棄されます）')) {
					return true;
				} else {
					return false;
				}
			}
		</script>

		<!-- scriptここまで -->
		<!-- 文字のアニメーションをモバイルでオフにする -->
		<script>
			new WOW({
				mobile : false
			}).init();
		</script>
		<!-- scriptここまで -->
	</div>
</body>
</html>
