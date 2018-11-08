<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>パスワード再設定確認</title>
</head>
<body>

	<jsp:include page="header.jsp"/>

	<h1>パスワード再設定確認画面</h1>

	<s:form action="ResetPasswordCompleteAction">
		<table>
			<tr>
				<th scope="row"><s:label value="ログインID"/></th>
				<td><s:property value="#session.loginId" /></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="再設定パスワード"/></th>
				<td><s:property value="#session.concealedPassword" /></td>
			</tr>
		</table>
		<s:submit value="再設定" class="submit_btn" />
	</s:form>

	<s:include value="footer.jsp" />

</body>
</html>