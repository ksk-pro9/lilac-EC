<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/resetPassword.css">
<link rel="stylesheet" href="./css/lilac.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<meta http-equiv="refresh" content="3;URL='HomeAction'" />

<title>パスワード再設定完了</title>
</head>
<body>

	<s:include value="header.jsp" />

	<div id="contents">
		<div class="resetContent">
			<div class="resetTitle">
				<span class="fas fa-key"></span> パスワード再設定確認画面 <span
					class="fas fa-key"></span>
			</div>
			パスワード再設定完了しました。
		</div>
	</div>

	<s:include value="footer.jsp" />

</body>
</html>