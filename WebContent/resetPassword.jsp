<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<title>パスワード再設定</title>

</head>

<style type="text/css">

/* .btn_secondary{ */
/* font-size:500px;
margin-top: 30px;
	width: 100%;
	height: 40px;
	text-align: center;
	color: white;
	background-color: #2E64FE;
	font-size: 20px;
	border-radius: 30px;
} */

/* /* 以下ボタン（基本） */

.btn_secondary {
	display: inline-block;
	width: 400px;
	height: 40px;
	text-align: center;
	text-decoration: none;
	line-height: 40px;
	outline: none;
}

.btn_secondary::before, .btn_secondary::after {
	position: absolute;
	z-index: -1;
	display: block;
	content: '';
}

.btn_secondary, .btn_secondary::before, .btn_secondary::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

/* 以下ボタン（応用） */

.btn_secondary{
  position: relative;
  z-index: 2;
  background-color: #fff;
  border: 2px solid #333;
  color: #333;
  line-height: 48px;
}
.btn_secondary::after {
  top: 4px;
  left: 4px;
  width: 188px;
  height: 42px;
  border: 2px solid #333;
  opacity: 0;
}
.btn_secondary:hover::after {
  opacity: 1;
}


.resetContent {
	margin: 30px auto;
	border-radius: 20px;
	padding-top: 15px;
	margin-bottom: 100px;
	width: 800px;
	border: dashed #A4A4A4;
}

.resetTitle {
	font-size: 1.5em;
	margin-bottom: 25px;
	padding-top: 40px;
	text-align: center;
	position: relative;
	padding-left: 25px;
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

.resetTitle h1 {
	text-align: center;
	font-size: 1em;
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
	border-bottom: solid 15px #A4A4A4;
}

.resetTitle::after {
	position: absolute;
	content: '';
	bottom: -3px;
	left: 10px;
	width: 100%;
	border-bottom: solid 3px #A4A4A4;
}

.fa-unlock-alt:before {
	content: "\f13e"; .
	resetTitle: after{
    position: absolute;
	content: '';
	bottom: -3px;
	left: 10px;
	width: 100%;
	border-bottom: solid 3px #A4A4A4; . resetMainForm { border-radius :
	20px;
	height: auto;
	padding: 20px 10%;
	content: '';
	bottom: -3px;
	left: 10px;
	width: 100%;
	border-bottom: solid 3px #A4A4A4;
}

.error-message {
	text-align: center;
	font-family: Impact, Charcoal;
	line-height: 25px;
	margin-bottom: 10px;
	color: red;
}

.resetMainForm {
	text-align: center;
}

.resetForm {
	text-align: center;
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

.btn_box{
	display:inline-block;
}

/* 以下ボタンデフォルト設定 */


/* /* 以下ボタン（基本） */

/* .btn_secondary {
	display: inline-block;
	width: 400px;
	height: 40px;
	text-align: center;
	text-decoration: none;
	line-height: 40px;
	outline: none;
}

.btn_secondary::before, .btn_secondary::after {
	position: absolute;
	z-index: -1;
	display: block;
	content: '';
}

.btn_secondary, .btn_secondary::before, .btn_secondary::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

/* 以下ボタン（応用） */

/* .btn_secondary{
  position: relative;
  z-index: 2;
  background-color: #fff;
  border: 2px solid #333;
  color: #333;
  line-height: 48px;
}
.btn_secondary::after {
  top: 4px;
  left: 4px;
  width: 188px;
  height: 42px;
  border: 2px solid #333;
  opacity: 0;
}
.btn_secondary:hover::after {
  opacity: 1;
} */ */

</style>

<body>

	<s:include value="header.jsp" />

	<div id="contents">

		<div class="resetContent">

			<div class="resetTitle">

				<span class="fas fa-key"></span> パスワード再設定画面 <span class="fas fa-key"></span>

			</div>


					<div class="resetMainForm">


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
						<div class="resetForm">
							<s:form action="ResetPasswordConfirmAction">
								<table class="vertical-list-table">

									<!-- ↓条件「ログインID保存未チェックならログイン画面からの遷移で未入力状態」→valueにsessionの値入れた。 -->

									<tr>
										<th scope="row"><s:label value="ログインID" /></th>
										<td><s:textfield name="loginId" placeholder="ログインID" class="txt" value='%{#session.loginId}' /></td>
									</tr>

									<tr>
										<th scope="row"><s:label value="現在のパスワード" /></th>
										<td><s:textfield name="password" placeholder="現在のパスワード" type="password" class="txt" value="" /></td>
									</tr>

									<tr>
										<th scope="row"><s:label value="新しいパスワード" /></th>
										<td><s:textfield name="newPassword"
												placeholder="新しいパスワード" type="password" class="txt" value="" /></td>
									</tr>

									<tr>
										<th scope="row"><s:label value="（再確認）" /></th>
										<td><s:textfield name="reConfirmationPassword"
												placeholder="新しいパスワード（再確認）" type="password" class="txt" value="" /></td>
									</tr>
								</table>

								<div class="btn_box">

									<s:submit value="パスワード設定" class="btn_secondary" />

								</div>
							</s:form>
						</div>
					</div>

			</div>
		</div>



	<s:include value="footer.jsp" />

</body>
</html>