<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="./css/lilac.css">
	<link rel="stylesheet" href="./css/cart.css">

	<title>カート</title>
	</head>

	<body>
		<s:include value="header.jsp" />
		<div id="contents">

			<h1 id="title-left">カート</h1>

			<s:if test="#session.checkListErrorMessageList!=null">
					<div class="error">
						<s:iterator value="#session.checkListErrorMessageList">
							<s:property />
						</s:iterator>
					</div>
			</s:if>

			<s:if test='#session.containsKey("cartInfoDtoList")'>
				<p class="titleMessage">カートには以下の商品が入っています。</p>
				<s:form id="form" action="SettlementConfirmAction">
					<div class="form2">
						<s:iterator value="#session.cartInfoDtoList">
						<div class="a">
							<div class="checkbox-image">
								<div class="checkbox">
									<s:checkbox name="checkList" value="checked" fieldValue="%{productId}"/>
									<s:hidden name="productId" value="%{productId}" />
								</div>
								<div class="product_image">
									<img src='<s:property value="imageFilePath" />/<s:property value="imageFileName" />' />
								</div>
							</div>
							<table class="textbox">
									<tr class="furigana">
										<td></td>
										<td><s:property value="productNameKana" /></td>
									</tr>
									<tr class="name">
										<th class="product_name_font"><s:label value="商品名" /></th>
										<th class="product_name_align"><s:property value="productName" /></th>
									</tr>
									<tr class="priceprice">
										<th><s:label value="値段" /></th>
										<th class="price-align"><s:property value="price" />円</th>
									</tr>
									<tr class="countcount">
										<th class="countName"><s:label value="(購入個数:" /></th>
										<th class="counting"><s:property value="productCount" />点)</th>
									</tr>

									<tr>
										<th><s:label value="発売会社名" /></th>
										<td><s:property value="releaseCompany" /></td>
									</tr>
									<tr>
										<th><s:label value="発売年月日" /></th>
										<td><s:property value="releaseDate" /></td>
									</tr>

									<tr>
										<th class="subtotal"><s:label value="合計金額" /></th>
										<th class="subtotal"><s:property value="subtotal" />円</th>
									</tr>
							</table>
						</div>
						<table>
								<s:hidden name="productName" value="%{productName}" />
								<s:hidden name="productNameKana" value="%{productNameKana}" />
								<s:hidden name="imageFilePath" value="%{imageFilePath}" />
								<s:hidden name="imageFileName" value="%{imageFileName}" />
								<s:hidden name="price" value="%{price}" />
								<s:hidden name="releaseCompany" value="%{releaseCompany}" />
								<s:hidden name="releaseDate" value="%{releaseDate}" />
								<s:hidden name="productCount" value="%{productCount}" />
								<s:hidden name="subtotal" value="%{subtotal}" />

						</table>
						</s:iterator>
					<h2 class="totalprice"><s:label value="カート合計金額:¥"/><s:property value="#session.totalPrice" />円</h2>
					<br>

						<div class="btn_set">
							<span><s:submit value="決済" class="submit_btn2" /></span>
						</div>

						<div class="btn_set">
							<span><s:submit value="削除" class="submit_btn3" onclick="this.form.action='DeleteCartAction';"/></span>
						</div>
					</div>
				</s:form>
			</s:if>
			<s:else>
				<div class="error">
				カート情報はありません。
				</div>
			</s:else>
		</div>

			<s:include value="footer.jsp" />
	</body>
</html>