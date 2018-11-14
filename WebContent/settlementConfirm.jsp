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
			float:left;
		}



		.horazontal-list-table{
			clear:both;
			background-color:#EEEEEE;
			border:solid 1px #777777;
			border-radius:10px;
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
								<s:iterator value="#session.destinationInfoDtoList" status="st">
										<tr><th><td>
													<s:if test="#st.index==0">
														<input type="radio" name="id" checked="checked" value="<s:property value='id' />"/>
													</s:if><s:else>
														<input type="radio" name="id" value="<s:property value='id' />"/>
													</s:else>
												</td>
												<s:label value="お届け先情報"/>
										</th></tr>
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

