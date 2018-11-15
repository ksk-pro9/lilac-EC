<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>宛先情報完了</title>
<script type="text/javascript">
	window.onload = function(){
		setInterval('backSettlementConfirmAction(back)',3000);
	}
	function backSettlementConfirmAction(form){
		form.submit();
	}
</script>

<style type="text/css">

#contents{
	max-width: 700px;
	margin: auto;
}

.success{
	background-color: #dcdcdc;
	border-radius: 25px;
	padding: 80px 20px;
	text-align: center;
	font-size: 25px;
	fone-weight: bold;
}

</style>

</head>

<body>

<s:include value="header.jsp"/>

<div id="contents">
	<div class="success">
	宛先情報の登録が完了しました。
		<s:form action="SettlementConfirmAction" name="back">
			<s:iterator value="session.cartInfoDtoList">
				<s:hidden name="productName" value="%{productName}"/>
				<s:hidden name="productNameKana" value="%{productNameKana}"/>
				<s:hidden name="imageFilePath" value="%{imageFilePath}"/>
				<s:hidden name="imageFileName" value="%{imageFileName}"/>
				<s:hidden name="price" value="%{price}"/>
				<s:hidden name="releaseCompany" value="%{releaseCompany}"/>
				<s:hidden name="releaseDate" value="%{releaseDate}"/>
				<s:hidden name="productCount" value="%{productCount}"/>
				<s:hidden name="subtotal" value="%{subtotal}"/>
				<s:hidden name="productId" value="%{productId}"/>
			</s:iterator>
		</s:form>
	</div>
</div>

<s:include value="footer.jsp"/>

</body>
</html>