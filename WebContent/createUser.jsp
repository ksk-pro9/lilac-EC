<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>ユーザ情報入力</title>
<link rel="stylesheet" type="text/css" href="./css/lilac.css"/>
<link rel="stylesheet" type="text/css" href="./css/createUser.css"/>

</head>

<body>

<s:include value="header.jsp"/>

<!-- ======= ここからcontents ======= -->

<div id="contents">
<h1 id="title-left">アカウント新規登録</h1>

<!-- ======= ここからエラーメッセージ error-message ======= -->

 <s:if test='#session.containsKey("familyNameErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.familyNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("firstNameErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.firstNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("familyNameKanaErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("firstNameKanaErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("emailErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("loginIdErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.loginIdErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("passwordErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.passwordErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<s:if test='#session.containsKey("alreadyLoginIdErrorMessageList")'>
	<div class="error">
		<s:iterator value="#session.alreadyLoginIdErrorMessageList"><s:property /><br></s:iterator>
	</div>
</s:if>

<!-- ======= ここまでエラーメッセージ /error-message ======= -->

<!-- ======= ここから入力フォーム input-form ======= -->

<div class="input-form">

<s:form action="CreateUserConfirmAction">
<input type="password" name="dummypass"
					style="top: -100px; left: -100px; position: fixed;" />
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

<div class="btn-area">
	<div class="submit_btn_box">
		<div id="contents-btn-set">
			<s:submit value="登録" class="submit_btn"/>
		</div>
	</div>
</div>

</s:form>

</div>
<!-- ======= ここまで入力フォーム /input-form ======= -->

</div>
<!-- ======= ここまで id /contents =======(エラー文と入力フォーム含めた画面) -->

<div id="footer">
	<s:include value="footer.jsp"/>
</div>

</body>
</html>
