<!--
-@author S.Kato 4/10
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
<title>Insert title here</title>
</head>
<style type="text/css">
#img-angle {
	transform: rotateZ(10deg);
}
</style>
<body>
	<!-- 商品ドキュメント -->
	<div class="container">
		<div class="row">
			<div class="col-xs-7 col-sm-7 col-md-7">
				<a href="#top" id="about"></a><br> <br> <br>
				<div align="center">
					<div class="wow animated fadeInDownBig" data-wow-offset="1">
						<h3>
							注目の試合、注目のホテルの贅沢セット !!<br>
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
					<th class="col-xs-3 col-sm-3 col-md-3">試合
					<th class="col-xs-6 col-sm-6 col-md-6">特徴
				<tr class="active">
					<td>レアルマドリードVSバルセロナ
					<td>世界が大注目のクラシコの観戦、サンチャコベルナベウへの観光などのレアルファンには堪らないプラン!!
				<tr class="active">
					<td>バルセロナVSレアルマドリード
					<td>世界が大注目のクラシコの観戦、カンプ・ノウへの観光などのバルサファンには堪らないプラン!!
				<tr class="active">
					<td>ドルトムントVSリバプール
					<td>香川の恩師グロップとの師弟対決!!ドルトムントの本拠地、ヴェストファーレンシュタディオンへの観光など<br>香川ファンには堪らないプラン!!
				<tr class="active">
					<td>ドルトムントVSバイエルン
					<td>世界が大注目のドイツ天王山を決める試合!!ドルトムントの本拠地、ヴェストファーレンシュタディオンへの観光など<br>香川ファンには堪らないプラン!!
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
</body>
</html>