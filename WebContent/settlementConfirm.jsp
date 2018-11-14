<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">

		<title>決済確認</title>
		<style type="text/css">
		.info{
			font:inherit;
				width:80%;
				margin-left:auto;
				margin-right:auto;
				text-align:center;
				margin-bottom:30px;
		}

		#form{
		width:80%;
		margin-left:auto;
		margin-right:auto;
		}
		.horizontal-list-table{
			font:inherit;
			border:solid #brack;
		}

		.tbody{
		display
		font:inherit;
		}
		</style>

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
								<table class="horizontal-list-table">
								<thead>

										<tr><th><s:label value="#"/></th></tr>
										<tr><th><s:label value="名前"/></th></tr>
										<tr><th><s:label value="ふりがな"/></th></tr>
										<tr><th><s:label value="住所"/></th></tr>
										<tr><th><s:label value="電話番号"/></th></tr>
										<tr><th><s:label value="メールアドレス"/></th></tr>

								</thead>
									<tbody>
									
										<s:iterator value="#session.destinationInfoDtoList" status="st">
											<tr>
												<td>
													<s:if test="#st.index==0">
														<input type="radio" name="id" checked="checked" value="<s:property value='id' />"/>
													</s:if><s:else>
														<input type="radio" name="id" value="<s:property value='id' />"/>
													</s:else>
												</td>
											</tr>
											<tr>
												<td>
													<s:property value="familyName"/><span> </span><s:property value="firstName" /><br>
												</td>
											</tr>
											<tr>
												<td>
													<s:property value="familyNameKana" /><span> </span><s:property value="firstNameKana" /><br>
												</td>
											</tr>
											<tr>
												<td>
													<s:property value="userAddress" />
												</td>
											</tr>
											<tr>
												<td>
													<s:property value="telNumber" />
												</td>
											</tr>
											<tr>
												<td>
													<s:property value="email" />
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>

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

