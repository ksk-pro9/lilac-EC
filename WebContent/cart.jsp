<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="./css/cart.css">

.submit_btn{
	font-size:20px;
	width:400px;
	border-radius:20px;
	background-color:#2FCDB4;
	color:#F8F8F8;
	box-shadow:0 5px #124d44;
	}

	.btn_box{
	text-align:center;
	position:relative;
	}

	.btn:hover span {
	transform: rotateX(360deg);
	}

	.btn {
	display: inline-block;
	text-decoration:none;
	width: 100px;
	padding: 0.8em;
	text-align: center;
	color: #FFF;
	border-radius: 4px;
	background: #4DD0E1;
	overflow: hidden;
	}

	.btn label{
	display:block;
	}

	.btn span {
	display:inline-block;
	transition: .6s
	}
	<title>カート</title>
	<script type="text/javascript">
		function goDeleteCartAction(){
			document.getElementById("form").action='DeleteCartAction';
		}
	</script>
	</head>

	<body>
		<s:include value="header.jsp" />
		<div id="contents">
			<h1>カート</h1>

			<s:if test="#session.checkListErrorMessageList!=null">
				<div class="error">
					<div class="error-message">
						<s:iterator value="#session.checkListErrorMessageList">
							<s:property />
						</s:iterator>
					</div>
				</div>
			</s:if>

			<s:if test="#session.cartInfoDtoList.size()>0">
				<p class="titleMessage">カートには以下の商品が入っています。</p>
				<s:form id="form1" action="SettlementConfirmAction">
					<table class="horizontal-list-table">
						<s:iterator value="#session.cartInfoDtoList">
						<div class="checkbox-image">
							<div class="checkbox">
								<s:checkbox name="checkList" value="checked" fieldValue="%{productId}"/>
								<s:hidden name="productId" value="%{productId}" />
							</div>
							<div class="gorigori">
								<img src='<s:property value="imageFilePath" />/<s:property value="imageFileName" />' />
							</div>
						</div>
						<table class="textbox">


								<tr>
									<th><s:label value="商品名" /></th>
									<td><s:property value="productName" /></td>
								</tr>
								<tr>
									<th><s:label value="ふりがな" /></th>
									<td><s:property value="productNameKana" /></td>
								</tr>
								<tr>
									<th><s:label value="値段" /></th>
									<td><s:property value="price" />円</td>
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
									<th><s:label value="購入個数" /></th>
									<td><s:property value="productCount" /></td>
								</tr>
								<tr>
									<th><s:label value="合計金額" /></th>
									<td><s:property value="subtotal" />円</td>
								</tr>
						</table>

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
							<div class="border floatclear"></div>
						</s:iterator>
					</table>
					<h2 class="totalprice"><s:label value="カート合計金額:\\"/><s:property value="#session.totalPrice" />円</h2>
					<br>

					<div class="btn_box">
						<div class="btn_set">
							<span><s:submit value="決済" class="btn" /></span>
						</div>
					</div>

					<div class="btn_box">
						<div class="btn-set">
							<span><s:submit value="削除" class="btn" onclick="this.form.action='DeleteCartAction';"/></span>
						</div>
						<a href="#" class="cp_btn"><span>button</span></a>
					</div>

				</s:form>
			</s:if>
			<s:else>
				<div class="info">
				カート情報はありません。
				</div>
			</s:else>
		</div>
		<div id="footer">
			<s:include value="footer.jsp" />
		</div>
	</body>
</html>