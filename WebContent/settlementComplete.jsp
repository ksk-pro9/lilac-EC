<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">

		<meta http-equiv="refresh" content="3;URL='HomeAction'">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link rel="stylesheet" href="./css/settlementComplete.css">
		<title>決済完了</title>

	</head>

	<body>
		<s:include value="header.jsp" />
					<div id="ccontents">
						<h1>決済完了画面</h1>
							<div class="success">
								決済完了しました!
								ご注文いただきありがとうございます!
							</div>
					</div>
		<s:include value="footer.jsp"/>
	</body>
</html>