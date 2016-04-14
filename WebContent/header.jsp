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
<title>商品詳細</title>
</head>
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
</body>
</html>