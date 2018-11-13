<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定</title>
</head>

<style type="text/css">

.resetContent {
	width: 50%;
	margin: auto;
	height: auto;
	border-radius: 20px;
	padding: 0.5em 1em;
	background: #f0f7ff;
	border: dashed 2px #5b8bd0; /*点線*/
}

.resetTitle {
}

.resetTitle h1 {
	text-align: center;
	font-size: 1em;
	/* 	border-bottom:solid 0.1em black; */
}

.resetTitle::before {
	position: absolute;
	content: '';
	bottom: -3px;
	left: 0;
	width: 0;
	height: 0;
	border: none;
	border-left: solid 15px transparent;
	border-bottom: solid 15px black;
}

.resetTitle::after {
	position: absolute;
	content: '';
	bottom: -3px;
	left: 10px;
	width: 100%;
	border-bottom: solid 3px #A4A4A4;
}

.resetMainForm {
	height: auto;
	padding: auto;
}

.error-message {
	text-align: center;
	color: red;
	font-size: 0.1em;
}

.vertical-list-table {
	margin: auto;
}

.vertical-list-table th {
	background-color: yellow;
}

.vertical-list-table td {
	background-color: pink;
}

.btn_box {
	text-align: center;
}


/* 以下ボタン（基本） */

.button {
  display: inline-block;
  width: 200px;
  height: 54px;
  text-align: center;
  text-decoration: none;
  line-height: 54px;
  outline: none;
}
.button::before,
.button::after {
  position: absolute;
  z-index: -1;
  display: black;
  content: '';
}
.button,
.button::before,
.button::after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all .3s;
  transition: all .3s;
}

/* 以下ボタン（応用） */

.button {
  position: relative;
  z-index: 2;
  background-color: white;
  border: 2px solid #333;
  color: pink;
  line-height: 50px;
  overflow: hidden;
}
.button:hover {
  color: black;
}
.button::after {
  top: -100%;
  width: 100%;
  height: 100%;
}
.button:hover::after {
  top: 0;
  backgrou

</style>

<body>

	<s:include value="header.jsp" />

	<div id="contents">

		<div class="resetContent">

			<div class="resetTitle">

				<h1>パスワード再設定画面</h1>

			</div>

			<div class="resetMainForm">
				<div class="resetForm">

					<!-- ↓セッションのloginIdErrorMessageListというキーの値が空でなければ、
			セッションのloginIdErrorMessageListの値を表示する。 -->

					<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator value="#session.loginIdErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:if test="!#session.passwordErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator value="#session.passwordErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:if test="!#session.passwordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator value="#session.passwordIncorrectErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:if test="!#session.newPasswordErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator value="#session.newPasswordErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:if
						test="!#session.reConfirmationNewPasswordErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator
									value="#session.reConfirmationNewPasswordErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:if
						test="!#session.newPasswordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
							<div class="error-message">
								<s:iterator
									value="#session.newPasswordIncorrectErrorMessageList">
									<s:property />
								</s:iterator>
							</div>
						</div>
					</s:if>

					<s:form action="ResetPasswordConfirmAction">
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
										class="txt" value="" /></td>
							</tr>

							<tr>
								<th scope="row"><s:label value="新しいパスワード" /></th>
								<td><s:textfield name="newPassword" placeholder="新しいパスワード"
										class="txt" value="" /></td>
							</tr>

							<tr>
								<th scope="row"><s:label value="（再確認用）" /></th>
								<td><s:textfield name="reConfirmationPassword"
										placeholder="新しいパスワード（再確認用）" class="txt" value="" /></td>
							</tr>
						</table>
						<div class="button">

							<s:submit value="パスワード設定" class="button" />
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>

	<s:include value="footer.jsp" />

</body>
</html>