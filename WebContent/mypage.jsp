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



}
h2{
    padding-left: 20px;
    margin-bottom: 15px;
    position: relative;
    border-left: solid 10px #A4A4A4;

}

.btn_mypage{
text-align:center;
position:relative;
top:50px;
}


table.vertical-list-table{
margin-left:auto;
margin-right:auto;
width:60%;
font-size:1.2rem;
line-height:1.3;
border-spacing: 1;
font-family: font-family: "游ゴシック", "Yu Gothic";

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
table.vertical-list-table, th, td {
	border-collapse: collapse;
	border: 3px solid white;
}


</style>


</head>

<div id="contents">

<div class="mypageRg">


<h2>会員登録情報</h2>
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


		<div class="btn_mypage">
		<div class="submit_btn_box">
		<s:submit value="購入履歴" class="submit_btn"/>
		</div>
		</div>
		</s:form>

</div>
</div>
		<s:include value="footer.jsp"/>

</body>
</html>









