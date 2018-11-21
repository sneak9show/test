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
<title>BuyItem画面</title>


<style type="text/css">
/* TAG LAYOUT */
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
		clear:both;
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
		#logo-img img{
		folat:left;
		width:200px;
		height:80px;
	}

	#header ul{
		float:right;
		line-height:40px;
	}
	#header ul li{
		float:left;
		list-style:none;
		color:white;
		padding-right:10px;
		font-size:15px;
	}

	#main {
		clear:both;
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
	</style>
</head>

<body>
	<div id="header">
		<div id="logo-img"><a href='<s:url action="GoHomeAction"/>'><img src="./img/konozama.png"></a>

			<ul>
				<li>
				<s:if test="#session.id == null">
					<s:form action="LoginAction">
						<s:submit value="ログイン" />
					</s:form>
				</s:if>
				</li>

				<li>
					<s:if test="#session.id != null">
						<s:form action="LogoutAction">
							<s:submit value="ログアウト"/>
						</s:form>
					</s:if>
				</li>

				<li>
					<s:form action="UserCreateAction">
						<s:submit value="新規登録" />
					</s:form>
				</li>
			</ul>
			</div>
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<h2>BuyItem</h2>
		</div>
		<div>
			<s:form action="BuyItemAction">
			<table>
				<tr>
					<td><span>商品名</span></td>
					<td><s:property value="session.buyItem_name"/></td>
				</tr>
				<tr>
					<td><span>値段</span></td>
					<td><s:property value="session.buyItem_price"/><span>円</span></td>
				</tr>
				<tr>
					<td><span>購入個数</span></td>
					<td>
					<select name="count">
						<option value="1" selected="selected">1</option>
						<option value="2" selected="selected">2</option>
						<option value="3" selected="selected">3</option>
						<option value="4" selected="selected">4</option>
						<option value="5" selected="selected">5</option>
					</select>
					</td>
				</tr>

				<tr>
					<td><span>支払い方法</span></td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金支払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>
				</tr>

				<tr>
					<td>
						<s:submit value="購入"/>
					</td>
				</tr>
			</table>
		</s:form>
		<div>
			<p>Home画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			<p>マイページは<a href ='<s:url action="MyPageAction"/>'>こちら</a></p>
		</div>
	</div>

	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>