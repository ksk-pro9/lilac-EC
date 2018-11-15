<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="./css/createDestination.css">
<title>宛先情報入力</title>

</head>

<body>

<s:include value="header.jsp"/>

<!-- ======= ここからcontents ======= -->
<div id="contents">

<h1>宛先情報入力画面</h1>

<!-- ======= ここからエラーメッセージ error-message ======= -->

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

<s:if test='#session.containsKey("userAddressErrorMessageList")'>
 	<div class="error">
		<div class="error-message">
			<s:iterator value="#session.userAddressErrorMessageList"><s:property /><br></s:iterator>
 		</div>
	</div>
</s:if>

<s:if test='#session.containsKey("telNumberErrorMessageList")'>
 	<div class="error">
		<div class="error-message">
			<s:iterator value="#session.telNumberErrorMessageList"><s:property /><br></s:iterator>
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

<!-- ======= ここまでエラーメッセージ /error-message ======= -->

<!-- ======= ここから入力フォーム form ======= -->

<div class="input-form">

<s:form action="CreateDestinationConfirmAction">

<div class="input-form-set">
	<div class="input-form-title">姓<span class="input-form-hissu">必須</span></div>
	<s:textfield name="familyName" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">名<span class="input-form-hissu">必須</span></div>
	<s:textfield name="firstName" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">姓ふりがな<span class="input-form-hissu">必須</span></div>
	<s:textfield name="familyNameKana" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">名ひらがな<span class="input-form-hissu">必須</span></div>
	<s:textfield name="firstNameKana" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">性別<span class="input-form-hissu">必須</span></div>
	<s:radio name="sex" list="%{#session.sexList}" value="%{#session.sex}" placeholder="性別" />
</div>

<div class="input-form-set">
	<div class="input-form-title">住所<span class="input-form-hissu">必須</span></div>
	<s:textfield name="userAddress" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">電話番号<span class="input-form-hissu">必須</span></div>
	<s:textfield name="telNumber" class="txt"/>
</div>

<div class="input-form-set">
	<div class="input-form-title">メールアドレス<span class="input-form-hissu">必須</span></div>
	<s:textfield name="email" class="txt"/>
</div>

<div class="submit_btn_box">
<div id="contens-btn-set">
	<s:submit value="宛先情報確認" class="submit_btn"/>
</div>
</div>

</s:form>

</div>
<!-- ======= ここまで入力フォーム /input-form ======= -->

</div>
<!-- ======= ここまで id contents(エラー文と入力フォーム含めた画面) ======= -->

<s:include value="footer.jsp"/>

</body>
</html>