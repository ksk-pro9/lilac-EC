<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="./css/lilac.css">
		<link rel="stylesheet" type="text/css" href="./css/settlementConfirm.css">

		<title>決済確認</title>
	</head>
	<body>
		<s:include value="header.jsp" />

	<div id="contents">
		<h1 id="title-center">決済確認画面</h1>

		<s:if test='#session.containsKey("destinationInfoDtoList")'>
		<div class="info">
			送り先情報を選択してください
		</div>
		<s:form id="form" action="SettlementCompleteAction" >
		<!--<h3>お届け先住所</h3>  -->
			<s:iterator value="#session.destinationInfoDtoList" status="st">
				<table class="horizontal-list-table">
					<tr>
						<s:if test="#st.index==0">
							<input type="radio" name="id" checked="checked" value="<s:property value='id' />"/><s:label value="お届け先情報"/>
						</s:if><s:else>
							<input type="radio" name="id" value="<s:property value='id' />"/><s:label value="お届け先情報"/>
						</s:else>
					</tr>
				</table>

				<table class="horazontal-list-table">
					<tr>
						<th><s:label value="名前"/></th>
						<td><s:property value="familyName"/><span> </span><s:property value="firstName" /><br></td>
					</tr>
					<tr>
						<th><s:label value="ふりがな"/></th>
						<td><s:property value="familyNameKana" /><span> </span><s:property value="firstNameKana" /><br></td>
					</tr>
					<tr>
						<th><s:label value="住所"/></th>
						<td><s:property value="userAddress" /></td>
					</tr>
					<tr>
						<th><s:label value="電話番号"/></th>
						<td><s:property value="telNumber" /></td>
					</tr>
					<tr>
						<th><s:label value="メールアドレス"/></th>
						<td><s:property value="email" /></td>
					</tr>

					</table>
			</s:iterator>
			<div class="submit_btn_box">
				<s:submit value="決済" class="submit_btn2" />
			</div>
		</s:form>
		</s:if>
		<s:else>
			<div class="info">
				宛先情報はありません
			</div>
		</s:else>
		<div class="submit_btn_box">
			<div id="contents-btn-set">
			<s:form action="CreateDestinationAction">
			<s:submit value="新規登録" class="submit_btn" />
			</s:form>
			</div>
		</div>
	</div>
	<s:include value="footer.jsp" />
	</body>
</html>

