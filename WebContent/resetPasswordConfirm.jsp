<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/lilac.css">
<link rel="stylesheet" href="./css/resetPassword.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<title>パスワード再設定確認</title>
</head>
<body>


	<s:include value="header.jsp" />
	<div id="contents">
		<div class="resetContent">
			<div class="resetTitle">

				<span class="fas fa-key"></span> パスワード再設定確認画面 <span
					class="fas fa-key"></span>
			</div>

			<s:form action="ResetPasswordCompleteAction">
				<div class="resetTable">
					<table class="vertical-list-table">
						<tr>
							<th scope="row"><s:label value="ログインID" /></th>
							<td><s:property value="#session.resetPassLoginId" /></td>
						</tr>
						<tr>
							<th scope="row"><s:label value="再設定パスワード" /></th>
							<td><s:property value="#session.concealedPassword" /></td>
						</tr>
					</table>
				</div>
				<div class="btn_box">
					<s:submit value="再設定" class="submit_btn2" />
				</div>
			</s:form>
		</div>
	</div>

	<s:include value="footer.jsp" />

</body>
</html>