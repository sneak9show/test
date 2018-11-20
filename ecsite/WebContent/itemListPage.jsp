<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<title>商品一覧</title>
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
		height: 2000px;
		text-align: center;
	}

	#footer {
		width: 100%;
		height: 80px;
		background-color: black;
		clear: both;
	}
	
	#itemList{
		
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
			<h2>商品一覧画面</h2>
		</div>
		
		<s:if test="ItemInfoDtoList != null">
		<div class="itemList">
		<s:iterator value="">
			<div class="itemBox">
			</div>
		</s:iterator>
		</div>
		</s:if>

	</div>
	
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>