<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!-- 最終編集 松浦 -->
<!-- 最終編集 松浦 -->
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="posting_form_title" /></title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/setting.css">
<link rel="stylesheet" href="./css/container.css">
<link rel="stylesheet" href="./css/posting.css">
<script type="text/javascript" src="./footerFixed.js"></script>
</head>
<body>
<!--  にった -->
<?php echo "あああ";?>	
	<jsp:include page="header.jsp" />
	
	<div class="content">
	
		<div class="box box-large">
			<div class="title-back">
				<h2 class="title">問い合わせフォーム</h2>
			</div>
			<div class="box-content">
				<center>
					お名前・メールアドレス・お問い合わせ内容を入力の上「確認へ進む」を押して下さい。
					<p>
						お問い合わせ前に <a href="<s:url action="GoQuestionAction"/>"/>よくある質問</a>
						もご覧ください
					</p>
					<form action="PostingFormConfirm.php" method="post">
					
					
						<%-- <div class="error_message">
							<s:fielderror>
								<s:param value="%{'postingName'}" />
							</s:fielderror>
							<s:fielderror>
								<s:param value="%{'postingEmail'}" />
							</s:fielderror>
							<s:fielderror>
								<s:param value="%{'postingText'}" />
							</s:fielderror>
						</div> --%>
						<table>
							<tr>
								<td>お名前</td>
								<td><input type="text" name="postingName" value=""></td>
							</tr>
							<tr>
								<td>メールアドレス</td>
								<td><input type="text" name="postingEmail" value=""></td>
							</tr>
							<tr>
								<td>問い合わせ内容</td>
								<td><textarea name="postingText" cols="42" rows="9"
										wrap="soft" value=""></textarea></td>
							</tr>
						</table>
						<input class="btn" type="submit" value="確認する" />
					</form>
				</center>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>

