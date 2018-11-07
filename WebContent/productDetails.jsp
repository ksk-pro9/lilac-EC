<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>商品詳細</title>
</head>
<body>
<%------- ヘッダー ----------%>
<jsp:include page="header.jsp" />

<%-------- メイン -----------%>
<div id="contents">
<h1>商品詳細画面</h1>

	<%--　「カートに追加」ボタンを押下すると、カートに商品が追加されます（AddCartAction） --%>
	<s:form action="AddCartAction">
	<div class="box">
	<div class="2column-container">

	<%----------　右カラム（商品画像） --------%>
	<div class="right">
		<img src='<s:property value="%{#session.imageFilePath}"/>/<s:property value="%{#session.imageFileName}"/>' class="item-image-box-320"/><br>
	</div>

	<%----------　左カラム（商品情報）---------%>
	<div class="left">
	<table class="vertical-list-table-mini">
		<tr>
			<th scope="row"><s:label value="商品名"/></th>
			<td><s:property value="%{#session.productName}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="商品名かな"/></th>
			<td><s:property value="%{#session.productNameKana}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="値段"/></th>
			<td><s:property value="%{#session.price}"/>円</td>
		</tr>
		<tr>
			<th scope="row"><s:label value="購入個数"/></th>
			<td><s:select name="productCount" list="%{#session.productCountList}"/>個</td>
		</tr>
		<tr>
			<th scope="row"><s:label value="発売会社名"/></th>
			<td><s:property value="%{#session.releaseCompany}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="発売年月日"/></th>
			<td><s:property value="%{#session.releaseDate}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="商品詳細情報"/></th>
			<td><s:property value="%{#session.productDescription}"/></td>
		</tr>
	</table>

	</div>
	</div>

	<%--　カートテーブルに商品情報を追加するため --%>
	<s:hidden name="productId" value="%{#session.productId}"/>
	<s:hidden name="productName" value="%{#session.productName}"/>
	<s:hidden name="productNameKana" value="%{#session.productNameKana}"/>
	<s:hidden name="imageFilePath" value="%{#session.imageFilePath}"/>
	<s:hidden name="imageFileName" value="%{#session.imageFileName}"/>
	<s:hidden name="price" value="%{#session.price}"/>
	<s:hidden name="releaseCompany" value="%{#session.releaseCompany}"/>
	<s:hidden name="releaseDate" value="%{#session.releaseDate}"/>
	<s:hidden name="productDescription" value="%{#session.productDescription}"/>

	</div>

	<div class="submit_btn_box">
		<s:submit value="カートに追加" class="submit_btn" />
	</div>
	</s:form>

	<%--下部に同じカテゴリーの別商品を３件まで表示（商品画像と商品名） --%>
	<div class="box">
	<%--画像押下で商品詳細画面に遷移します。 --%>
	<s:iterator value="#session.productInfoDtoList">
		<div class="recommend-box">
		<a href='<s:url action="ProductDetailsAction">
		<s:param name="productId" value="%{productId}"/>
		</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-100"/>
		</a>
		<s:property value="productName"/><br>
		</div>
	</s:iterator>
	</div>
</div>
</div>
<s:include value="footer.jsp"/>
</body>
</html>