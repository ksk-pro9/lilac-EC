<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/purchaseHistory.css">


<title>商品購入履歴</title>

<s:include value="header.jsp"/>



</head>

<body>


<div id="contents">

<div class="purchaseDetails">
		<s:if test="#session.purchaseHistoryInfoDtoList.size()>0">


<div class="purchaseHistoryA">

	<div class="pageTitle2">購入履歴</div>

	<div class="purchaseHistory_btn">
		<div id="contents-btn-set">
			<s:form action="DeletePurchaseHistoryAction">
				<s:submit value="履歴全削除" class="purchaseHistory2_btn"/>
			</s:form>
		</div>


	</div>
	</div>


				<s:iterator value="#session.purchaseHistoryInfoDtoList">

				<div id="a">
					<div id ="left">
						<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' width="300px" height="250px"/>
					</div>


					<div id="right">

						<table class="horizontal-list-table">
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
</div>
</div>



<s:include value="footer.jsp"/>
</body>
</html>




