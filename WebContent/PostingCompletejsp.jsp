<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<!-- 最終編集 松浦 -->
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="posting_complete_title" /></title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/setting.css">
<link rel="stylesheet" href="./css/container.css">
<link rel="stylesheet" href="./css/posting.css">
</head>
<body>

	<jsp:include page="header.jsp" />


	<div class="posting_comp">
		<div class="center">
			<h2>
				お問い合わせ頂きありがとうございました。
			</h2>
			<s:if test="#session.name_key != null">
				<a href="<s:url action="SkipValidationMainAction"/>"
					class="posting_link"><s:text name="go_main" /></a>
			</s:if>
			<s:else>
				<a href="<s:url action="GoUserLoginAction"/>" class="posting_link">トップページへ</a>
			</s:else>
		</div>
	</div>


	<jsp:include page="footer.jsp" />

</body>
</html>