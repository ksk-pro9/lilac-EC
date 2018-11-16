<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/header.css">
	<link rel="stylesheet" href="./css/lilac.css">
	<title>ヘッダー</title>
</head>

<body>
	<header>
			<div id="head">
				<div id = "top">

					<div id = "left">
						<div id = "logo">
							<a href='<s:url action="HomeAction"/>'>B.read</a>
						</div>
					</div>

					<div id = "right">
						<ul>
							<li id = "cart">
								<a href="CartAction"><img src='./images/cart.png' width="20px" height="20px" id="header-image">カート</a>
							</li>

							<li id = "item">
								<a href="ProductListAction"><img src='./images/item.png' width="20px" height="20px" id="header-image">商品一覧</a>
							</li>

							<!-- ログイン状態のときに表示されるもの -->
							<s:if test="#session.logined == 1">
								<li id = "logout">
									<a href="LogoutAction"><img src='./images/logout.png' width="20px" height="20px" id="header-image">ログアウト</a>
								</li>
							</s:if>

							<!-- 未ログイン状態のときに表示されるもの -->
							<s:else>
								<li id = "login">
									<a href="GoLoginAction"><img src='./images/login.png' width="20px" height="20px" id="header-image">ログイン</a>
								</li>
							</s:else>

							<!-- ログイン状態のときに表示されるもの -->
							<s:if test="#session.logined == 1">
								<li id = "mypage">
									<a href="MyPageAction"><img src='./images/mypage.png' width="20px" height="20px" id="header-image">マイページ</a>
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
								<input type="image" id="search-box" src="./images/search.png"/></div>
					</s:form>
				</div>
			</div>
	</header>
</body>

</html>