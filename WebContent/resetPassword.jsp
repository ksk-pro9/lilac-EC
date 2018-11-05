<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>パスワード再設定</title>
</head>
<body>
	<h1>パスワード再設定画面</h1>

	<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
		<s:iterator value="#session.loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:if test="!#session.passwordErrorMessageList.isEmpty()">
		<s:iterator value="#session.paaswordErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:if test="!#session.paswordIncorrectErrorMessageList.isEmpty()">
		<s:iterator value="#session.loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:if test="!#session.newPasswordErrorMessageList.isEmpty()">
		<s:iterator value="#session.loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:if
		test="!#session.reConfirmationNewPasswordErrorMessageList.isEmpty()">
		<s:iterator value="#session.loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:if test="!#session.newPasswordIncorrectErrorMessageList.isEmpty()">
		<s:iterator value="#session.loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>

	<s:form action="ResetPasswordConfirmAction">

		<tr>
			<th scope="row"><s:label value="ログインID" /></th>
			<td><s:textfield name="loginId" placeholder="ログインID" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="現在のパスワード" /></th>
			<td><s:textfield name="password" placeholder="現在のパスワード"
					class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="新しいパスワード" /></th>
			<td><s:textfield name="newPassword" placeholder="新しいパスワード"
					class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="（再確認用）" /></th>
			<td><s:textfield name="reConfirmationPassword"
					placeholder="新しいパスワード（再確認用）" class="txt" /></td>
		</tr>

		<s:submit value="パスワード設定" class="submit_btm" />

	</s:form>

</body>
</html>