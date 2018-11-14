<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">


<title>商品購入履歴</title>

<s:include value="header.jsp"/>
<style type="text/css">


.table.horizontal-list-table{

margin-top:500px;
margin-left:100px;
width:30%;
font-size:1rem;
line-height:1;
font-family: serif;

}
.table.horizontal-list-table thead{
width:50%;
padding:20px;
font-weight:400;
vertical-align:top;
background: #555555;
color:white;


}

.table.horizontal-list-table tbody{
width:50%;
padding:20px;
background:#999999;
color:white;

}

</style>

</head>

<body>
<div id="contents">

<h1>商品購入履歴画面</h1>
<s:if test="#session.purchaseHistoryInfoDtoList.size()>0">
<table class="horizontal-list-table">

<thead>
<tr>
	<th><s:label value="商品名"/></th>
	<th><s:label value="ふりがな"/></th>
	<th><s:label value="商品画像"/></th>
	<th><s:label value="値段"/></th>
	<th><s:label value="販売会社名"/></th>
	<th><s:label value="販売年月日"/></th>
</tr>
</thead>
<tbody>
<s:iterator value="#session.purchaseHistoryInfoDtoList">
<tr>
	<td><s:property value="productName"/></td>
	<td><s:property value="productNameKana"/></td>
	<td><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' width="50px" height="50px"/></td>
	<td><s:property value="price"/>円</td>
	<td><s:property value="releaseCompany"/></td>
	<td><s:property value="releaseDate"/></td>
</tr>
</s:iterator>
</tbody>
</table>
<div class="submit_btn_box">
<div id="contents-btn-set">
<s:form action="DeletePurchaseHistoryAction">
<s:submit value="削除" class="submit_btn"/>
</s:form>
</div>
</div>
</s:if>
<s:else>
<div class="info">
商品購入履歴はありません。
</div>
</s:else>
</div>
<s:include value="footer.jsp"/>
</body>
</html>

