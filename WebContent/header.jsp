<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link rel="stylesheet" href="./css/style.css">

	<title>ヘッダー</title>
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
		<div id="">
			<div id="">
				B.read
			</div>

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


			パターン２(こっちで行く予定)
			<div id="">
				<!-- list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->

				<s:form action="SearchItemAction">
					<s:if test='#session.containsKey("mCategoryDtoList")'>
						<s:select name="categoryId" list="#session.mCategoryDtoList" listKey="categoryId" listValue="categoryName" selected="categoryId"/>
					</s:if>
					<s:textfield name="keywords" placeholder="検索ワード"/>
					<s:submit value="商品検索"/>
				</s:form>

				<!-- ログイン状態のときに表示されるもの -->
				<s:if test="#session.logined == 1">
					<s:form action="LogoutAction">
						<s:submit value="ログアウト"/>
					</s:form>
				</s:if>

				<!-- 未ログイン状態のときに表示されるもの -->
				<s:else>
					<s:form action="GoLoginAction">
						<s:submit value="ログイン"/>
					</s:form>
				</s:else>

				<s:form action="CartAction">
					<s:submit value="カート"/>
				</s:form>

				<s:form action="ProductListAction">
					<s:submit value="商品一覧"/>
				</s:form>

				<!-- ログイン状態のときに表示されるもの -->
				<s:if test="#session.logined == 1">
					<s:form action="MyPageAction">
						<s:submit value="マイページ"/>
					</s:form>
				</s:if>
			</div>
		</div>
	</header>
</body>

</html>