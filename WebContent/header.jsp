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

	<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>
</head>

<body>
	<header>
	<%-- 編集中 --%>
		<div id="header">
			<div id="header-title">
				B.read
			</div>

<%-- 		formの書き方予備
			<s:form action="ItemListAction">
				<s:submit value="一覧"/>
			</s:form>
 --%>

<%--
			予備
			<div id="">
				<s:form id="form" name="form">
					<ul>
						<s:if test='#session.containsKey("mCategoryDtoList")'>
							<!-- categoryIdという名前で保存する(1～5) list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->
							<li><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId"/></li>
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

			<div>
				<ul>
					<s:if test='#session.containsKey("mCategoryDtoList")'>
						<!-- categoryIdという名前で保存する(1～5) list=表示するリスト listKey=Keyとなる項目 listValue=値となる項目 -->
						<li><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" selected="%{#session.categoryId}"/></li>
					</s:if>

					<s:form action="SearchItemAction">
						<li><s:textfield name="keywords" placeholder="検索ワード" value="%{#session.keywords}"/></li>
						<li><s:submit value="商品検索"/></li>
					</s:form>

					<!-- ログイン状態のときに表示されるもの -->
					<s:if test="#session.logined == 1">
						<li><input type="button" value="ログアウト" onclick="submitAction('LogoutAction')"/></li>
					</s:if>

					<!-- 未ログイン状態のときに表示されるもの -->
					<s:else>
						<li><input type="button" value="ログイン" onclick="submitAction('GoLoginAction')"/></li>
					</s:else>

					<li><input type="button" value="カート" onclick="submitAction('CartAction')"/></li>

					<li><input type="button" value="商品一覧" onclick="submitAction('ProductListAction')"/></li>

					<!-- ログイン状態のときに表示されるもの -->
					<s:if test="#session.logined == 1">
						<li><input type="button" value="マイページ" onclick="submitAction('MyPageAction')"/></li>
					</s:if>
				</ul>
			</div>
		</div>
	</header>
</body>

</html>