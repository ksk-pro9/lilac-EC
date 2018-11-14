
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/style.css">

	<style type="text/css">
		#contents{
					margin:0 auto;
					width:80%;

		}
		.login{
				border:1px solid lightgray;
				padding:20px;

		}

		table{

		}

		h1{
			padding-left:20px;
			font-size:30px;
			border-left:5px solid lightgray;
		}

	</style>

	<title>ログイン</title>

	<script>
		function goLoginAction(){
			document.getElementById("form").action="LoginAction";
		}
		function goCreateUserAction(){
			document.getElementById("form").action="CreateUserAction";
		}
		function goResetPasswordAction(){
			document.getElementById("form").action="ResetPasswordAction";
		}
	</script>
</head>


<body>
<s:include value="header.jsp" />
<div id="contents">
<h1>ログイン</h1>
<div class="login">
<s:form id="form" action="LoginAction">
	<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.loginIdErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test="!#session.passwordErrorMessageList.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.passwordErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test="!#session.errorPasswordErrorMessageList.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.errorPasswordErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
<!--
	SAVED:<s:property value="%{#session.savedLoginId}"/>
	LOGINID:<s:property value="%{#session.loginId}"/>
-->

			<s:label value="ログインID:"/>
			<s:if test="#session.savedLoginId == true">
			<s:textfield name="loginId" class="txt" placeholder="ログインID" value='%{#session.loginId}' autocomplete="off"/>
			</s:if>
			<s:else>
			<s:textfield name="loginId" class="txt" placeholder="ログインID" autocomplete="off"/>
			</s:else>


			<s:label value="パスワード:"/>

			<s:form action="ResetPasswordAction">


			<s:submit value="パスワード再設定" class="submit_btn" />
			</s:form>
			</div>

			<s:password name="password" class="txt" placeholder="パスワード" autocomplete="off"/>

	<div >
		<s:if test="#session.savedLoginId == true">
			<s:checkbox name="savedLoginId"  checked="checked"/>
		</s:if>
		<s:else>
			<s:checkbox name="savedLoginId"/>
		</s:else>
		<s:label value="ログインID保存"/><br>
	</div>
	<div>
		<s:submit value="ログイン" class="submit_btn" onclick="goLoginAction();"/>
	</div>
</s:form>
<br>
</div>
<div >
	<div >
		<s:form action="CreateUserAction">
			<s:submit value="新規ユーザー登録" class="submit_btn" />
		</s:form>
	</div>
</div>
<div >
<div >

</div>
</div>
</div>


<s:include value="footer.jsp"/>
</body>
</html>