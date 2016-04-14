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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="stylecss/bootstrap-select.min.css" rel="stylesheet" />

<title>cart</title>
<style type="text/css">
.cart-img {
	width: 165px;
	height: 110px;
}

.ranking-img {
	width: 62px;
	height: 55px;
}

.font {
	font-size: 10px;
}

.content {
	width: 800x;
	margin: 100px 100px;
	background-color: #f5f5f5;
	overflow: hidden;
	border-radius: 10px;
	overflow: hidden;
}

.set {
	margin: 50px 100px;
	padding: 20px;
	background-color: #ffffff;
	overflow: hidden;
	border-radius: 10px;
}

.title {
	margin: 50px 100px;
	text-align: center;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
}

.goukei {
	margin: 50px 0;
}

th {
	padding: 0px 30px;
}

td {
	padding: 0px 10px;
}
</style>

<script type="text/javascript">
	function func() {
		var xx = parseFloat(document.F1.T1.value);
		var yy = parseFloat(document.F1.T2.value);
		document.F1.T3.value = xx * yy;
	}
</script>

</head>
<body>
	<div class="content">
		<div class="title">
			<h1>カート</h1>
		</div>
		<div class="set">
			<center>
				<table class="table1">
					<tr>
					<th>
					<s:submit type="button" class="btn btn-info" value="削除"/>
					</th>
						<th><img src="img/real6.jpg" class="cart-img"></th>
						<th>試合名：レアルマドリード VSバルセロナ<br> ホテル名: <br>
							飛行機：ファーストクラス<br>
						</th>
					</tr>
				</table>
			</center>

			<form name="F1" action="#">
				<center>
					<div class="goukei">
						<table>
							<tr>
								<td><input type="text" name="T1"> <output
										type="text" value="lot"></output></td>
								<td>円</td>
								<td>×</td>
								<td><input type="text" name="T2">枚</td>
								<td><input type="button" value="＝" onclick="func()">
								</td>
								<td>¥<input type="text" name="T3">-
								</td>
							</tr>
						</table>
					</div>
				</center>
			</form>
			<p>
			<center>
				<input type="submit" class="btn btn-info btn-lg" value="購入確認へ進む" />
			</center>
			</p>
		</div>
		<div class="set">
			人気ランキング：<br>
			<table>
				<tr>
					<td><img src="img/real6.jpg" class="ranking-img"></td>
					<td>
						<div class="font">試合名：レアルマドリード VSバルセロナ</div>
						<div class="font">ホテル名:</div>
						<div class="font">飛行機：ファーストクラス</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>