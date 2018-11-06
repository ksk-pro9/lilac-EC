<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>商品購入履歴</title>

</head>
<body>
<jsp:include page="header.jsp"/>
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




</table>
<s:if test=

</div>



</body>
</html>