<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Admin画面</title>

<style type="text/css">
	body {
		margin: 0;
		padding: 0;
		line-height:1.6;
		letter-spacing: 1px;
		font-famiry: Verdana, Helvetica, sans-serif;
		font-size: 12px;
		color: #333;
		background: #fff;
	}

	table {
		text-align: center;
		margin: 0 auto;
	}
	/* ID LAYOUT */
	#top {
		width: 780px;
		margin: 30px auto;
		border: 1px solid #333;
		text-align:center;

	}

	#header {
		width: 100%;
		height: 80px;
		background-color: black;
	}

	#main {
		width: 100%;
		height: 500px;
		text-align: center;
	}

	#footer {
		width: 100%;
		height: 80px;
		background-color: black;
		clear: both;
	}

	#admin_box_1{
		margin-left:24%;
		width:25%;
		float:left;
		display: line-block;
		text-align: center;
		border:1px solid black;
	}

	#admin_box_2{
		width:25%;
		float:left;
		margin-left:25px;
		display: line-block;
		text-align: center;
		border:1px solid black;
	}

	#text-exit{
		padding:30px;
		margin:30px;
		clear:both;
		text-align:center;
	}

</style>
</head>
<body>

	<div id="header">
		<div id="pr">
		</div>
	</div>

	<div id="main">
		<div id="top">
			<h2>管理者画面</h2>
		</div>

		<div id="admin_box_1">
			<div>
				<h3>商品</h3>
			</div>
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録" />
			</s:form>

			<s:form action="ItemListAction">
				<s:submit value="一覧" />
			</s:form>
		</div>

		<div id="admin_box_2">
			<div>
				<h3>ユーザー</h3>
			</div>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録" />
			</s:form>

			<s:form action="UserListAction">
				<s:submit value="一覧" />
			</s:form>
		</div>

		<div id="text-exit">
			<p>Home画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>

		</div>

		<div id="footer">
			<div id="pr"></div>
		</div>

</body>
</html>