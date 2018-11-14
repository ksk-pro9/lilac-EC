<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">

	<link rel="stylesheet" href="./css/header.css">

	<title>ヘッダー</title>

</head>

<body>
	<header>

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
								<input type="image" id="search-box" src="./images/search.png"/></div>
					</s:form>
				</div>

			</div>
	</header>
</body>

</html>