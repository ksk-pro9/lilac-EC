<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
<%-- 	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> --%>
	<link rel="stylesheet" href="./css/style.css">

	<title>ヘッダー</title>

	<style type="text/css">

		body{
		}

		#head{
		}

		#head > ul{
			list-style-type: none;
		}

		#head > ul > li{

		}

	</style>

<%--
	<script>
		function goLoginAction(){
			document.getElementById("form").action="GoLoginAction";
		}
		function goMyPageAction(){
			document.getElementById("form").action="MyPageAction";
		}
		function goCartAction(){
			document.getElementById("form").action="CartAction";
		}
		function goProductListAction(){
			document.getElementById("categoryId").value=1;
			document.getElementById("form").action="ProductListAction";
		}
		function goLogoutAction(){
			document.getElementById("form").action="LogoutAction";
		}
		function goSearchItemAction(){
			document.getElementById("form").action="SearchItemAction";
		}
	</script>
 --%>
</head>

<body>
	<header>

<%--
			パターン１
			<div id="">
				<s:form id="form" name="form">
					<ul>
						<s:if test='#session.containsKey("mCategoryDtoList")'>
							<!-- categoryIdという名前で保存する(1～5) list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->
							<li><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" selected="categoryId"/></li>
						</s:if>

						<li><s:textfield name="keywords"  placeholder="検索ワード"/></li>

						<li><s:submit value="商品検索" onclick="goSearchItemAction();"/><li>

						<!-- ログイン状態のときに表示されるもの -->
						<s:if test="#session.logined == 1">
							<li><s:submit value="ログアウト" onclick="goLogoutAction();"/></li>
						</s:if>

						<!-- 未ログイン状態のときに表示されるもの -->
						<s:else>
							<li><s:submit value="ログイン" onclick="goLoginAction();"/></li>
						</s:else>

						<li><s:submit value="カート" onclick="goCartAction();"/><li>

						<li><s:submit value="商品一覧" onclick="goProductListAction();"/></li>

						<!-- ログイン状態のときに表示されるもの -->
						<s:if test="#session.logined == 1">
							<li><s:submit value="マイページ" onclick="goMyPageAction();"/></li>
						</s:if>
					</ul>
				</s:form>
			</div>

 --%>

			<!-- パターン２(こっちで行く予定) -->
			<div id="head">
				<ul>
					<li id = "logo"><a href='<s:url action="HomeAction"/>'>B.read</a></li>

					<s:form action="CartAction">
						<li id = "cart">画像入れる
						<s:submit value="カート"/></li>
					</s:form>

					<s:form action="ProductListAction">
						<li id = "item">画像入れる
						<s:submit value="商品一覧"/></li>
					</s:form>

					<!-- ログイン状態のときに表示されるもの -->
					<s:if test="#session.logined == 1">
						<s:form action="LogoutAction">
							<li id = "logout">画像入れる
							<s:submit value="ログアウト"/></li>
						</s:form>
					</s:if>

					<!-- 未ログイン状態のときに表示されるもの -->
					<s:else>
						<s:form action="GoLoginAction">
							<li id = "login">画像入れる
							<s:submit value="ログイン"/></li>
						</s:form>
					</s:else>

					<!-- ログイン状態のときに表示されるもの -->
					<s:if test="#session.logined == 1">
						<s:form action="MyPageAction">
							<li id = "mypage">画像入れる
							<s:submit value="マイページ"/></li>
						</s:form>
					</s:if>

					<s:form action="SearchItemAction">
						<s:if test='#session.containsKey("mCategoryDtoList")'>
							<!-- list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->
							<li id = "category">
							<s:select name="categoryId" list="#session.mCategoryDtoList" listKey="categoryId" listValue="categoryName" selected="categoryId"/></li>
						</s:if>
						<li id = "keywords">
						<s:textfield name="keywords" placeholder="検索ワード"/></li>
						<li id = "search">
						<s:submit value="商品検索"/></li>
					</s:form>
				</ul>
			</div>
	</header>
</body>

</html>