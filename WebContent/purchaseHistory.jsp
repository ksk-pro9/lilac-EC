<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/lilac.css">
<link rel="stylesheet" href="./css/purchaseHistory.css">

<title>商品購入履歴</title>

<s:include value="header.jsp"/>

</head>

<body>

<div id="contents">

<h1 id="title-left"> 購入履歴</h1>
<s:if test='#session.containsKey("purchaseHistoryInfoDtoList")'>

	<div class="purchaseBtn">
			<s:form action="DeletePurchaseHistoryAction">
				<s:submit value="履歴全削除" class="submit_btn3"/>
			</s:form>
		</div>

				<s:iterator value="#session.purchaseHistoryInfoDtoList">

				<div id="purchaseTable">
					<div id ="left">
						<img class="purchase_img" src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>'/>
					</div>

					<div id="right">

							<table>
							<tr>
								<th><s:label value="商品名"/></th>
								<td><s:property value="productName"/></td>
							</tr>
							<tr>
								<th><s:label value="ふりがな"/></th>
								<td><s:property value="productNameKana"/></td>
							</tr>
							<tr>
								<th><s:label value="値段"/></th>
								<td><s:property value="price"/>円</td>
							</tr>
							<tr>
								<th><s:label value="発売会社名"/></th>
								<td><s:property value="releaseCompany"/></td>
							</tr>
							<tr>
								<th><s:label value="発売年月日"/></th>
								<td><s:property value="releaseDate"/></td>

							</tr>
						</table>

					</div>
					</div>
				</s:iterator>

		</s:if>
<s:else>
			<div class="info2">
				商品購入履歴はありません。
			</div>
		</s:else>
		</div>

<s:include value="footer.jsp"/>
</body>
</html>