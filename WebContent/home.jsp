<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/style.css">
	<title>ホーム</title>

	<style type="text/css">

		#contents > h1{
			text-align: center;
		}

	</style>
</head>

<body>

	<s:include value="header.jsp" />

	<div id="contents">
		<h1>ホーム画面</h1>
	</div>

	<s:include value="footer.jsp"/>

</body>

</html>