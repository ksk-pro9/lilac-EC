<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ユーザ情報入力</title>
<link rel="stylesheet" type="text/css" href="./css/lilac.css"/>

</head>

<body>

<s:include value="header.jsp"/>

<!-- ======= ここからcontents ======= -->

<div id="contents">
<h1>ユーザー情報入力画面</h1>

<s:if test="!#session.familyNameErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.familyNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test="!#session.firstNameErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.firstNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test="!#session.familyNameKanaErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test="!#session.firstNameKanaErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:if test="!#session.emailErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

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

<!-- ======= ここまでエラーメッセージ /error-message ======= -->



<!-- ======= ここから入力フォーム form ======= -->
<div class="form-create">

<s:form action="CreateUserConfirmAction">

<!-- <table class="vertical-list-table"> -->

<div class="form-create-set">
<div class="form-create-title">姓<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="familyName" value="%{#session.familyName}" placeholder="姓" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">名<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">姓ひらがな<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="familyNameKana" value="%{#session.familyNameKana}"  placeholder="姓ふりがな" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">名ひらがな<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">性別<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:radio name="sex" list="%{#session.sexList}" value="%{#session.sex}" placeholder="性別" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">メールアドレス<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="email" value="%{#session.email}"  placeholder="メールアドレス" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">ログインID<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:textfield name="loginId" value="%{#session.loginId}" placeholder="ログインID" class="txt" /></div>
</div>

<div class="form-create-set">
<div class="form-create-title">パスワード<span class="form-create-hissu">必須</span></div>
<div class="form-create-textarea"><s:password name="password" value=""  placeholder="パスワード" class="txt" /></div>
</div>

<%-- 	<tr>
		<th scope="row">名</th>
		<td><s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" /></td>
	</tr>

	<tr>
		<th scope="row">姓ふりがな</th>
		<td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}"  placeholder="姓ふりがな" class="txt" /></td>
	</tr>

	<tr>
		<th scope="row">名ふりがな</th>
		<td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" /></td>
	</tr>

	<tr>
		<th scope="row">性別</th>
		<td><s:radio name="sex" list="%{#session.sexList}" value="%{#session.sex}" placeholder="性別" /></td>
	</tr>

	<tr>
		<th scope="row">メールアドレス</th>
		<td><s:textfield name="email" value="%{#session.email}"  placeholder="メールアドレス" class="txt" /></td>
	</tr>

	<tr>
		<th scope="row">ログインID</th>
		<td><s:textfield name="loginId" value="%{#session.loginId}" placeholder="ログインID" class="txt" /></td>
	</tr>

	<tr>
		<th scope="row">パスワード</th>
		<td><s:password name="password" value=""  placeholder="パスワード" class="txt" /></td>
	</tr>
--%>

<!-- </table> -->

<div class="submit_btn_box">
<div id="contents-btn-set">
	<s:submit value="登録" class="submit_btn"/>
</div>
</div>

</s:form>

</div>
<!-- ======= ここまで入力フォーム /form ======= -->

</div>
<!-- ======= ここまで /contents ======= -->


<div id="footer">
	<s:include value="footer.jsp"/>
</div>

</body>
</html>