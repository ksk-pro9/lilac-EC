
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/login.css">
<title>ログイン</title>
</head>


<body>
	<s:include value="header.jsp" />
	<div id="contents">
		<h1>ログイン</h1>



		<s:form id="form" action="LoginAction">
			<s:if test='#session.containsKey("loginIdErrorMessageList")'>
				<div class="error">
					<div class="error-message">
						<s:iterator value="#session.loginIdErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test='#session.containsKey("passwordErrorMessageList")'>
				<div class="error">
					<div class="error-message">
						<s:iterator value="#session.passwordErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
			<s:if test='#session.containsKey("errorPasswordErrorMessageList")'>
				<div class="error">
					<div class="error-message">
						<s:iterator value="#session.errorPasswordErrorMessageList">
							<s:property />
							<br>
						</s:iterator>
					</div>
				</div>
			</s:if>
		</s:form>




		<div class="login">

			<s:form action="LoginAction">
				<input type="password" name="dummypass"
					style="top: -100px; left: -100px; position: fixed;" />
				<s:label value="ログインID:" />
				<br>
				<s:if test="#session.savedLoginId == true">

					<s:textfield name="loginId" class="txt" placeholder="ログインID"
						value='%{#session.loginId}' autocomplete="off" />
				</s:if>
				<s:else>
					<s:textfield name="loginId" class="txt" placeholder="ログインID"
						autocomplete="off" />
				</s:else>

				<br>
				<s:label value="パスワード:" />

				<a href="ResetPasswordAction" class="henkou">パスワード変更</a>

				<br>
				<s:password name="password" class="txt" placeholder="パスワード"
					autocomplete="off" />

				<div>
					<s:if test="#session.savedLoginId == true">
						<s:checkbox name="savedLoginId" checked="checked" />
					</s:if>
					<s:else>
						<s:checkbox name="savedLoginId" />
					</s:else>
					<s:label value="ログインID保存" />
					<br>
				</div>

				<div class="log">

					<s:submit value="ログイン" class="submit_btn" />
				</div>

			</s:form>

		</div>
		<div>
			<div class="sinki">
				<s:form action="CreateUserAction">
					<s:submit value="新規ユーザー登録" class="submit_btn" />
				</s:form>
			</div>
		</div>

	</div>



	<s:include value="footer.jsp" />
</body>
</html>