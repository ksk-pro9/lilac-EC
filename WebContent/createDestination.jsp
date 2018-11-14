<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>宛先情報入力</title>

<style type="text/css">

.input-form{
	background-color: #dcdcdc;
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
	margin-bottom: 3px;
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
	border-left: solid 8px #c0c0c0;
	padding-left: 5px;
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

<h1>宛先情報入力画面</h1>

<!-- ======= ここからエラーメッセージ error-message ======= -->

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
< 	<div class="error">
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

<s:if test="!#session.userAddressErrorMessageList.isEmpty()">
 	<div class="error">
		<div class="error-message">
			<s:iterator value="#session.userAddressErrorMessageList"><s:property /><br></s:iterator>
 		</div>
	</div>
</s:if>

<s:if test="!#session.telNumberErrorMessageList.isEmpty()">
 	<div class="error">
		<div class="error-message">
			<s:iterator value="#session.telNumberErrorMessageList"><s:property /><br></s:iterator>
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









<%--
<table class="vertical-list-table">

<s:form action="CreateDestinationConfirmAction">
<table class="vertical-list-table">

<tr>
	<th scope="row"><s:label value="姓"/></th>
	<td><s:textfield name="familyName" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="名"/></th>
	<td><s:textfield name="firstName" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="姓ふりがな"/></th>
	<td><s:textfield name="familyNameKana" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="名ふりがな"/></th>
	<td><s:textfield name="firstNameKana" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="性別"/></th>
	<td><s:radio name="sex" list="sexList" value="defaultSexValue" label="性別" placeholder="性別"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="住所"/></th>
	<td><s:textfield name="userAddress" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="電話番号"/></th>
	<td><s:textfield name="telNumber" class="txt"/></td>
</tr>

<tr>
	<th scope="row"><s:label value="メールアドレス"/></th>
	<td><s:textfield name="email" class="txt"/></td>
</tr>

</table> --%>

<div class="submit_btn_box">
<div id="contens-btn-set">
	<s:submit value="宛先情報確認" class="submit_btn"/>
</div>
</div>

</s:form>


</div>
<!-- ======= ここまで入力フォーム /form ======= -->

</div>
<!-- ======= ここまで /contents ======= -->

<s:include value="footer.jsp"/>

</body>
</html>