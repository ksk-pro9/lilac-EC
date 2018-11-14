<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<meta http-equiv="refresh" content="3;URL='HomeAction'"/>
<title>登録完了</title>

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
ユーザー登録が完了しました。
</div>
</div>

<div id="footer">
	<s:include value="footer.jsp"/>
</div>

</body>
</html>