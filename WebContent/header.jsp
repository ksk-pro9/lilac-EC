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

		input[type="submit"]{
			border:none;
			background-color:transparent;
		}


		*{
			margin:0px;
			padding:0px;

		}
		header{
			background-color: yellow;
			position : fixed;
			width : 100%;
			height : 100px;
		}

		#head{
			padding: 10px;
		}

		#head > #top > #right > ul{
			list-style-type: none;
		}

		#head > ul > li{
		}

		#logo{
			float: left;
		}

		#cart{
			float: left;
		}

		#item{
			float: left;
		}

		#logout{
			float: left;
		}

		#login{
			float: left;
		}

		#mypage{
			float: left;
		}

		#bottom{
			clear: both;
		}

		#category{
			float: left;
		}

		#keywords{
			float: left;
		}

		#search{
			float: left;
		}

		#category-box{
			height: 30px;
			background-color: red;
			border-top-left-radius: 5px;
			border-bottom-left-radius: 5px;
		}

		#keywords-box{
			height: 25px;
			background-color: red;
		}

		#search-image{
			height: 20px;
			padding: 5px;
			background-color: red;
			border-top-right-radius: 5px;
			border-bottom-right-radius: 5px;
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
			Javascript使ってる方
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

 --%>

			<div id="head">

				<div id = "top">

				<div id = "left">
					<div id = "logo">
					<a href='<s:url action="HomeAction"/>'>B.read</a></div>
				</div>

				<div id = "right">
					<ul>
						<li id = "cart">
							<img src='./images/cart.png' id="header-image" width="20px" height="20px" />
						</li>
						<li id = "cart">
							<s:form action="CartAction">
								<s:submit value="カート"/>
							</s:form>
						</li>


						<li id = "item">
							<img src='./images/item.png' id="header-image" width="20px" height="20px" />
						</li>
						<li id = "item">
							<s:form action="ProductListAction">
								<s:submit value="商品一覧"/>
							</s:form>
						</li>


						<!-- ログイン状態のときに表示されるもの -->
						<s:if test="#session.logined == 1">
							<li id = "logout">
								<img src='./images/logout.png' id="header-image" width="20px" height="20px" />
							</li>
							<li id = "logout">
								<s:form action="LogoutAction">
									<s:submit value="ログアウト"/>
								</s:form>
							</li>
						</s:if>


						<!-- 未ログイン状態のときに表示されるもの -->
						<s:else>
							<li id = "login">
								<img src='./images/login.png' id="header-image" width="20px" height="20px" />
							</li>
							<li id = "login">
								<s:form action="GoLoginAction">
									<s:submit value="ログイン"/>
								</s:form>
							</li>
						</s:else>


						<!-- ログイン状態のときに表示されるもの -->
						<s:if test="#session.logined == 1">
							<li id = "mypage">
								<img src='./images/mypage.png' id="header-image" width="20px" height="20px" />
							</li>
							<li id = "mypage">
								<s:form action="MyPageAction">
									<s:submit value="マイページ"/>
								</s:form>
							</li>
						</s:if>
					</ul>
				</div>
				</div>


				<div id = "bottom">
					<s:form action="SearchItemAction">
						<s:if test='#session.containsKey("mCategoryDtoList")'>
							<!-- list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->
							<div id = "category">
								<s:select id="category-box" name="categoryId" list="#session.mCategoryDtoList" listKey="categoryId" listValue="categoryName" selected="categoryId"/></div>
						</s:if>

							<div id = "keywords">
								<s:textfield id="keywords-box" name="keywords" placeholder="検索ワード"/></div>

							<div id = "search">
								<input type="image" id="search-image" src="./images/search.png" width="15px" height="15px"/></div>
					</s:form>
				</div>

			</div>
	</header>
</body>

</html>