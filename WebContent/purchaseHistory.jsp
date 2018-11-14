<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="./css/style.css"> -->


<title>商品購入履歴</title>

<s:include value="header.jsp"/>

<style type="text/css">


	.purchaseDetails{

		width:80%;
		height:600px;
		margin:auto;

	}

	#a{
	border-top:20px solid black;
	width:70%;
	height:300px;
	margin:auto;

	}

	#left{

	position:relative;
	top:30px;
	float:left;

	}

	#right{


	float:left;
	position:relative;
	top:60px;
	left:70px;
	font-size:20px;

	}

	.mypage2_btn{
	text-align:center;
	position:relative;
	bottom:50px;
	}

h2{
position:relative;
bottom:50px;
}

</style>

</head>

<body>

<s:include value="header.jsp"/>

<div id="contents">

	<h2>購入履歴</h2>

	<div class="mypage2_btn">
	<div class="submit_btn_box">
		<div id="contents-btn-set">
			<s:form action="DeletePurchaseHistoryAction">
				<s:submit value="削除" class="submit_btn"/>
			</s:form>
		</div>
	</div>
	</div>

	<div class="purchaseDetails">
		<s:if test="#session.purchaseHistoryInfoDtoList.size()>0">


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
			<div class="info">
				商品購入履歴はありません。
			</div>
		</s:else>

	</div>
</div>

<s:include value="footer.jsp"/>
</body>
</html>




