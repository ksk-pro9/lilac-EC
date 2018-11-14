
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
			padding-top:20px;
			padding-left:30px;
			padding-right:30px;
			border-radius: 10px;
			border-bottom:-5px;
			border:1.5px solid lightgray;

		}

		h1{
			padding-left:20px;
			font-size:30px;
			border-left:3px solid lightgray;
		}

		.txt{
			border-radius: 10px;
    		box-shadow: 0 0 6px gray;
    		margin-top: 10px;
    		margin-left: 10px;
    		margin-right: 10px;
    		margin-bottom: 20px;
    		font-size:10px;
		}

		::placeholder {
  			color: gray;
 			font-size:15px;
 			line-height:20px;
 			padding-left:2px;
		}

		.log{
			text-align:center;
			padding:0px 50px;
			margin:10px;

		}

		.submit_log_btn{
			width:500px;
			height:50px;
		}

		.sinki{
			text-align:center;
			margin:10px;
		}

		.submit_btn{
			width:400px;
			height:30px;

		}

		.henkou{
			float:right;
			color:black;
			text-decoration:none;
		}

		#form{
			margin:10px;
			background-color:white;
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

<s:form id="form" action="LoginAction">
	<s:if test='#session.containsKey("loginIdErrorMessageList")'>
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.loginIdErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test='#session.containsKey("passwordErrorMessageList")'>
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.passwordErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test='#session.containsKey("errorPasswordErrorMessageList")'>
		<div class="error">
			<div class="error-message">
				<s:iterator value="#session.errorPasswordErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
</s:form>
<!--
	SAVED:<s:property value="%{#session.savedLoginId}"/>
	LOGINID:<s:property value="%{#session.loginId}"/>
-->
<div class="login">
	<s:form>
			<s:label value="ログインID:"/>
			<s:if test="#session.savedLoginId == true">
			<s:textfield name="loginId" class="txt" placeholder="ログインID" value='%{#session.loginId}' autocomplete="off"/>
			</s:if>
			<s:else>
			<s:textfield name="loginId" class="txt" placeholder="ログインID" autocomplete="off"/>
			</s:else>

			<s:label value="パスワード:"/>

			<a href="ResetPasswordAction" class="henkou">パスワード変更</a>

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

	<div class="log">
		<s:submit value="ログイン" class="submit_log_btn" onclick="goLoginAction();"/>
	</div>

</s:form>
<br><br>
</div>
<div >
	<div class="sinki">
		<s:form action="CreateUserAction">
			<s:submit value="新規ユーザー登録" class="submit_btn" />
		</s:form>
	</div>
</div>


</div>



<s:include value="footer.jsp"/>
</body>
</html>