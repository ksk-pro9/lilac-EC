<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/lilac.css">
<link rel="stylesheet" href="./css/productDetails.css">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>

<body>
<%--------- ヘッダー ----------%>
<s:include value="header.jsp" />

<%---------- メイン -----------%>
<div id="contents">
<h1 id="title-center">商品詳細画面</h1>

	<%--　「カートに追加」ボタンを押下すると、カートに商品が追加されます（AddCartAction） --%>
	<s:form action="AddCartAction">
	<div class="box1">
	<div class="2column-container">

	<%----------　カラム（商品画像） --------%>
	<div class="colum1">
		<img src='<s:property value="%{#session.imageFilePath}"/>/<s:property value="%{#session.imageFileName}"/>' class="item-image-box-320"/><br>
	</div>

	<%----------　カラム（商品情報）---------%>
	<div class="colum2">
	<table class="vertical-list-table">
		<tr>
			<%--　scope="row"：見出しに対応するデータは行方向（右方向）です。 --%>
			<th scope="row"><s:label value="商品名"/></th>
			<td><s:property value="%{#session.productName}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="商品名ふりがな"/></th>
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




	<%--　選択された商品の情報を送ります。 --%>
	<s:hidden name="productId" value="%{#session.productId}"/>
	<s:hidden name="productName" value="%{#session.productName}"/>
	<s:hidden name="productNameKana" value="%{#session.productNameKana}"/>
	<s:hidden name="imageFilePath" value="%{#session.imageFilePath}"/>
	<s:hidden name="imageFileName" value="%{#session.imageFileName}"/>
	<s:hidden name="price" value="%{#session.price}"/>
	<s:hidden name="releaseCompany" value="%{#session.releaseCompany}"/>
	<s:hidden name="releaseDate" value="%{#session.releaseDate}"/>
	<s:hidden name="productDescription" value="%{#session.productDescription}"/>
	<s:token/>



	<div class="submit_btn_box">
	<button type="submit" class="submit_btn2">
		<i class="fas fa-shopping-cart"></i> カートに追加
	</button>
<%-- 		<s:submit value="カートに追加" class="submit_btn" /> --%>
	</div>
	</div>
	</div>
	</div>
	</s:form>

	<%--ページ下部に同じカテゴリーの別商品を３件表示（商品画像と商品名）します。 --%>
	<h2>関連商品</h2>
	<div class="box2">
	<div class="product-details-recommend-box">
	<%-----画像押下で商品詳細画面に遷移します。----%>
	<s:iterator value="#session.productInfoDtoList">


	<div class="recommend-box">
	<ul>
		<li>
		<a href='<s:url action="ProductDetailsAction">
		<s:param name="productId" value="%{productId}"/>
		</s:url>'>
		<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-100"/>
		<div class="item-text2">
		<s:property value="productName"/><br>
		<s:property value="price"/>円<br>
		</div>
		</a>
		</li>
	</ul>
	</div>

	</s:iterator>
	</div>
	</div>
</div>
<s:include value="footer.jsp"/>
</body>
</html>