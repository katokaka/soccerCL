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
<title>Insert title here</title>
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="js/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="./stylecss/jquery.bxslider.css" rel="stylesheet" />
<style type="text/css">
ul li .slide-image{
	width: 1024px;
	height: 677px;
}
</style>
<script>
$(function(){
	$('.bxslider').bxSlider({
		auto:true,
		speed:1000,
		pause:6000
	});
});
</script>


</head>
<body>
	<ul class="bxslider">
		<li><img src="./img/real04.jpg"  width="1024px"; height="677px";/></li>
		<li><img src="./img/real05.jpg" width="1024px"; height="677px";/></li>
		<li><img src="./img/baruserona05.jpg" width="1024px"; height="677px";/></li>
		<li><img src="./img/baruserona06.jpg" width="1024px"; height="677px";/></li>
		<li><img src="./img/dorutomunto05.jpg" width="1024px"; height="677px";/></li>
		<li><img src="./img/dorutomunto04.jpg" width="1024px"; height="677px";/></li>
	</ul>

</body>
</html>