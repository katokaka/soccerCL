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
<title>cartconfirm</title>
<style type="text/css">
.cart-img {
	width: 165px;
	height: 110px;
}

.content {
	width: 800x;
	margin: 100px auto;
	background-color: #f5f5f5;
	overflow: hidden;
	border-radius: 10px;
	overflow: hidden;
}

.set {
	margin: 50px 100px;
	padding: 20px 20px;
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

.sumprice {
	text-align: right;
	margin: 50px 100px;
	padding:30px 30px;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
}
</style>

</head>
<body>
	<div class="content">
		<div class="title">
			<h1>カートの確認</h1>
		</div>
		<div class="set">
			<center>
				<table>
					<tr>
						<td><img src="img/real6.jpg" class="cart-img"></td>
						<td>試合名：レアルマドリード VSバルセロナ<br> ホテル名: <br>
							飛行機：ファーストクラス<br> 枚数：
						</td>
					</tr>
				</table>
			</center>
		</div>
		<p class=" sumprice">合計金額：￥ー</p>
	</div>
</body>
</html>