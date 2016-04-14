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
<title>ラジオボタン</title>
</head>
<body>

<img name="myIMG" src="img/Hotel1989.jpg" border="0" width="32" height="32">
<br>
<FORM>
<INPUT type="radio" name="myRB" onClick="Gazou('img/the_serras_hotel.jpg')" checked>パンダ
<INPUT type="radio" name="myRB" onClick="Gazou('img/ka-sakanpe-ru.jpg')">ペンギン
<INPUT type="radio" name="myRB" onClick="Gazou('img/Hotel1989.jpg')">ねこ
<INPUT type="radio" name="myRB" onClick="Gazou('images/icons4.gif')">ねずみ
<INPUT type="radio" name="myRB" onClick="Gazou('images/icons5.gif')">ライオン
</FORM>



<script LANGUAGE="JavaScript">
function Gazou(mysrc){
document.myIMG.src=mysrc;
}
</script>
</body>
</html>