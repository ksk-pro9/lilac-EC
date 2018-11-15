<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="./css/settlementConfirm.css">
		<title>決済確認</title>

	</head>

		<body>
			<s:include value="header.jsp" />
				<div id="contents">
				<h1>決済確認画面</h1>
			<s:if test="#session.destinationInfoDtoList.size()>0">

				<div class="info">
					送り先情報を選択してください
				</div>
					<s:form id="form" action="SettlementCompleteAction" >
							<!--<h3>お届け先住所</h3>  -->
								<s:iterator value="#session.destinationInfoDtoList" status="st">
								<table class="horizontal-list-table">
																		<tr><th><td>
													<s:if test="#st.index==0">
														<label><input type="radio" name="id" checked="checked" value="<s:property value='id' />"/></input>お届け先情報</label>
													</s:if><s:else>
														<label><input type="radio" name="id" value="<s:property value='id' />"/></input>お届け先情報</label>
													</s:else>

										</tr></th></td>
								</table>
									<table class="horazontal-list-table">
										<tr><th><s:label value="名前"/>
											<td>
													<s:property value="familyName"/><span> </span><s:property value="firstName" /><br>
											</th></td>
										</tr>
										<tr><th><s:label value="ふりがな"/>
											<td>
												<s:property value="familyNameKana" /><span> </span><s:property value="firstNameKana" /><br>
											</td>
											</th></tr>
										<tr><th><s:label value="住所"/>
											<td>
												<s:property value="userAddress" />
											</td>
										</th></tr>
										<tr><th><s:label value="電話番号"/>
											<td>
												<s:property value="telNumber" />
											</td>
										</th></tr>
										<tr><th><s:label value="メールアドレス"/>
											<td>
												<s:property value="email" />
											</td>
										</th></tr>
									</table>
										</s:iterator>


									<div class="submit_btn_box">
										<div id=".contents-btn-set">
											<s:submit value="決済" class="submit_btn" />
										</div>
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

