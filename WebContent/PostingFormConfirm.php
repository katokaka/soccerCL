<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問い合わせフォーム</title>
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
						お問い合わせ前に <a href="<s:url action="GoQuestionAction" />">よくある質問</a>
						もご覧ください
					</p>
					<s:form action="GoPostingCompleteAction" method="post">
						<table>
							<tr>
								<td>名前</td>
								<td><?php echo "あああ";?></td>
								<td><?php echo $_post["postingName"];?></td>
							</tr>
							<tr>
								<td>メールアドレス</td>
								<td><?php echo  $_post["postingEmail"];?></td>
							</tr>
							<tr>
								<td>問い合わせ内容</td>
								<td><?php echo  $_post["postingText"];?></td>
							</tr>
						</table>
						<s:submit type="button" class="btn" value="戻る"
							formaction="GoPostingFormAction">
						</s:submit>

						<button class="btn" formaction="<s:url 
							action="GoPostingCompleteAction">
							<s:param name="postingName">
								<s:property value="postingName" />
							</s:param>
							<s:param name="postingEmail">
								<s:property value="postingEmail" />
							</s:param>
							<s:param name="postingText">
								<s:property value="postingText" />
							</s:param>
							</s:url>
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