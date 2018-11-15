<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/resetPassword.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<title>パスワード再設定</title>

</head>

<body>

	<s:include value="header.jsp" />

	<div id="contents">

		<div class="resetContent">

			<div class="resetTitle">

				<span class="fas fa-key"></span> パスワード再設定画面 <span class="fas fa-key"></span>

			</div>

<!-- 			<div class="resetMainForm"> -->

			<div class="errorMessage">



				<!-- ↓セッションのloginIdErrorMessageListというキーの値が空でなければ、
			セッションのloginIdErrorMessageListの値を表示する。 -->

				<s:if test='#session.containsKey("resetPassLoginIdErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator value="#session.resetPassLoginIdErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				<s:if test='#session.containsKey("passwordErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator value="#session.passwordErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				<s:if
					test='#session.containsKey("passwordIncorrectErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator value="#session.passwordIncorrectErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				<s:if test='#session.containsKey("newPasswordErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator value="#session.newPasswordErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				<s:if
					test='#session.containsKey("reConfirmationNewPasswordErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator
								value="#session.reConfirmationNewPasswordErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				<s:if
					test='#session.containsKey("newPasswordIncorrectErrorMessageList")'>
					<div class="error">
						<div class="error-message">
							<s:iterator value="#session.newPasswordIncorrectErrorMessageList">
								<s:property /><br>
							</s:iterator>
						</div>
					</div>
				</s:if>

				</div>

<!-- 				<div class="resetForm"> -->
					<s:form action="ResetPasswordConfirmAction">
					<div class="resetTable">
						<table class="vertical-list-table">

							<!-- ↓条件「ログインID保存未チェックならログイン画面からの遷移で未入力状態」→valueにsessionの値入れた。 -->

							<tr>
								<th scope="row"><s:label value="ログインID" /></th>
								<td><s:textfield name="loginId" placeholder="ログインID"
										class="txt" value='%{#session.loginId}' /></td>
							</tr>

							<tr>
								<th scope="row"><s:label value="現在のパスワード" /></th>
								<td><s:textfield name="password" placeholder="現在のパスワード"
										type="password" class="txt" value="" /></td>
							</tr>

							<tr>
								<th scope="row"><s:label value="新しいパスワード" /></th>
								<td><s:textfield name="newPassword" placeholder="新しいパスワード"
										type="password" class="txt" value="" /></td>
							</tr>

							<tr>
								<th scope="row"><s:label value="（再確認）" /></th>
								<td><s:textfield name="reConfirmationPassword"
										placeholder="新しいパスワード（再確認）" type="password" class="txt"
										value="" /></td>
							</tr>
						</table>
					</div>
					<div class="btn_box">

							<s:submit value="パスワード設定" class="submit_btn" />

					</div>
					</s:form>

<!-- 				</div> -->
<!-- 			</div> -->

		</div>
	</div>



	<s:include value="footer.jsp" />

</body>
</html>