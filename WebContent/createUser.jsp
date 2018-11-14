<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ユーザ情報入力</title>
<link rel="stylesheet" type="text/css" href="./css/lilac.css"/>

<style type="text/css">

.input-form{
	background-color: #d3d3d3;
	border-radius: 25px;
	padding: 100px 20px;
}
.input-form-set{
	padding: 10px 100px;
}
.input-form-title{
	font-size: 20px;
	font-weight: bold;
	text-align: left;
	padding: 2px 0 2px 30px;
	margin-bottom: 5px;
	margin-left: -25px;
}
.input-form-hissu{
	font-size: 15px;
	background-color: red;
	margin-left: 20px;
	margin-rigth: 8px;
	padding: 1px 2px;
	color: #fff;
	border-radius: 10px;
	margin-bottom: 3px;
}

#contents{
	max-width: 700px;
	margin: auto;
}

#contents h1{
	font-size: 30px;
	border-left: solid 15px #c0c0c0;
	padding-left: 15px;
}

.txt{
	font-size: 10px;
	width: 98%;
	height: 30px;
	border-radius: 20px;
	box-shadow: 0 0 10px black;
	padding: 0 0 0 3%;
	margin-bottom: 20px;
}

</style>


</head>

<body>

<s:include value="header.jsp"/>

<!-- ======= ここからcontents ======= -->

<div id="contents">
<h1>アカウント新規登録</h1>

 <s:if test='#session.containsKey("familyNameErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.familyNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test='#session.containsKey("firstNameErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.firstNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test='#session.containsKey("familyNameKanaErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test='#session.containsKey("firstNameKanaErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test='#session.containsKey("emailErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

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

<s:if test='#session.containsKey("alreadyLoginIdErrorMessageList")'>
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.alreadyLoginIdErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- ======= ここまでエラーメッセージ /error-message ======= -->

<!-- ======= ここから入力フォーム input-form ======= -->
<div class="input-form">

<s:form action="CreateUserConfirmAction">

<div class="input-form-set">
<div class="input-form-title">姓<span class="input-form-hissu">必須</span></div>
<s:textfield name="familyName" value="%{#session.familyName}" placeholder="姓" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">名<span class="input-form-hissu">必須</span></div>
<s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">姓ふりがな<span class="input-form-hissu">必須</span></div>
<s:textfield name="familyNameKana" value="%{#session.familyNameKana}"  placeholder="姓ふりがな" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">名ひらがな<span class="input-form-hissu">必須</span></div>
<s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">性別<span class="input-form-hissu">必須</span></div>
<s:radio name="sex" list="%{#session.sexList}" value="%{#session.sex}" placeholder="性別" />
</div>

<div class="input-form-set">
<div class="input-form-title">メールアドレス<span class="input-form-hissu">必須</span></div>
<s:textfield name="email" value="%{#session.email}"  placeholder="メールアドレス" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">ログインID<span class="input-form-hissu">必須</span></div>
<s:textfield name="loginId" value="%{#session.loginId}" placeholder="ログインID" class="txt" />
</div>

<div class="input-form-set">
<div class="input-form-title">パスワード<span class="input-form-hissu">必須</span></div>
<s:password name="password" value=""  placeholder="パスワード" class="txt" />
</div>

<div class="submit_btn_box">
<div id="contents-btn-set">
	<s:submit value="登録" class="submit_btn"/>
</div>
</div>

</s:form>

</div>
<!-- ======= ここまで入力フォーム /input-form ======= -->

</div>
<!-- ======= ここまで id /contents ======= -->

<div id="footer">
	<s:include value="footer.jsp"/>
</div>

</body>
</html>