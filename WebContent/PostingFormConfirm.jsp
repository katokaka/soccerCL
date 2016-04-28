<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<!-- 最終編集 松浦 -->
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="posting_confirmation_title" /></title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/setting.css">
<link rel="stylesheet" href="./css/container.css">
<link rel="stylesheet" href="./css/posting.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="content">
		<div class="box box-large">
			<div class="title-back">
				<h2 class="title">問い合わせ内容確認</h2>
			</div>
			<div class="box-content">
				<center>
					<p>
						お問い合わせ前に
						<a href="<s:url action="GoQuestionAction"/>">よくある質問</a> もご覧ください
					</p>
					<s:form action="GoPostingCompleteAction" method="post">
						<table>
							<tr>
								<td>名前</td>
								<?php echo $_post["postingName"]?>
							</tr>
							<tr>
								<td><s:property value="postingName" /></td>
							</tr>
							<tr>
								<td>メールアドレス</td>
							</tr>
							<tr>
								<td><s:property value="postingEmail" /></td>
							</tr>
							<tr>
								<td>問い合わせ内容</td>
							</tr>
							<tr>
								<td><s:property value="postingText" /></td>
							</tr>
						</table>
						<s:submit type="button" class="btn"
							value="戻る"
							formaction="GoPostingFormAction">
						</s:submit>

						<button class="btn"
							formaction="<s:url action="GoPostingCompleteAction">
						<s:param name="postingName"><s:property value="postingName"/></s:param>
							<s:param name="postingEmail"><s:property value="postingEmail"/></s:param>
							<s:param name="postingText"><s:property value="postingText"/></s:param></s:url>">
							送信をする
						</button>
					</s:form>
				</center>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp" />

</body>
</html>