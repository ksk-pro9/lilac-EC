<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">

<title>マイページ</title>

<s:include value="header.jsp"/>

<style type="text/css">

table.vertical-list-table{
margin-top:100px;
margin-left:auto;
margin-right:auto;

width:80%;
font-size:1.4rem;
line-height:1.5;
font-family: font-family: "游ゴシック", "Yu Gothic";
border-right: 1px #555555;
border-bottom: 1px #555555;
border-top: 1px #555555;
border-left: 1px #555555;

}


table.vertical-list-table th{

width:40%;
padding:20px;
font-weight:700;
vertical-align:top;
background: #555555;
color:white;
text-align: center;

}



table.vertical-list-table td{
width:60%;
padding:20px;
background:#999999;
color:white;
text-align: left;
}

</style>


</head>


<div id="contents">

<h1>会員登録情報</h1>
	<s:form action="PurchaseHistoryAction">
		<table class="vertical-list-table">

			<tr>
				<th scope="row"><s:label value="姓"/></th>
				<td><s:property value="#session.familyName"/></td>
			</tr>

			<tr>

				<th scope="row"><s:label value="名"/></th>
				<td><s:property value="#session.firstName"/></td>
			</tr>

			<tr>
				<th scope="row"><s:label value="ふりがな"/></th>
				<td><s:property value="#session.familyNameKana"/><span>
				</span><s:property value="#session.firstNameKana"/></td>

			</tr>

			<tr>
				<th scope="row"><s:label value="性別"/></th>
				<td><s:if test="#session.sex==0">男性</s:if><s:if test="session.sex==1">女性</s:if></td>

			</tr>

			<tr>
				<th scope="row"><s:label value="メールアドレス"/></th>
				<td><s:property value="#session.email"/></td>
			</tr>
		</table>

		<div class="submit_btn_box">
		<s:submit value="購入履歴" class="submit_btn"/>
		</div>
		</s:form>
</div>
		<s:include value="footer.jsp"/>

</body>
</html>









