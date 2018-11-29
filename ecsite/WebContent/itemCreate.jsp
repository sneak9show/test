<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="./css/style.css">
<title>ItemCreate画面</title>

</head>
<body>
	<div id="header">
		<div id="logo-img">
			<a href='<s:url action="GoHomeAction"/>'><img
				src="./img/konozama.png"></a>

			<ul>
				<li><s:if test="#session.id == null">
						<s:form action="LoginAction">
							<s:submit value="ログイン" />
						</s:form>
					</s:if></li>

				<li><s:if test="#session.id != null">
						<s:form action="LogoutAction">
							<s:submit value="ログアウト" />
						</s:form>
					</s:if></li>

				<li><s:form action="UserCreateAction">
						<s:submit value="新規登録" />
					</s:form></li>
			</ul>
		</div>
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<h2>ItemCreate</h2>
		</div>

		<div>


			<table>
				<s:form action="ItemCreateConfirmAction">
					<tr>
						<td><label>商品名:</label></td>
						<td><input type="text" name="itemName" value="<s:property value='itemName'/>" /></td>
						<td>
							<s:if test="erroeMessage_itemName != ''">
								<s:property value="errorMessage_itemName" escape="false" />
							</s:if>
						</td>
					</tr>

					<tr>
						<td><label>商品価格:</label></td>
						<td><input type="text" name="itemPrice" value="<s:property value='itemPrice'/>" /></td>
						<td>
							<s:if test="erroeMessage_price != ''">
								<s:property value="errorMessage_price" escape="false" />
							</s:if>
						</td>
					</tr>

					<tr>
						<td><label>在庫数:</label></td>
						<td><input type="text" name="itemStock" value="<s:property value='itemStock'/>" /></td>
						<td>
							<s:if test="erroeMessage_stock != ''">
								<s:property value="errorMessage_stock" escape="false" />
							</s:if>
						</td>
					</tr>

					<s:submit value="登録" />
				</s:form>
			</table>

			<div>
				<span>Home画面に戻るには</span> <a href='<s:url action="GoHomeAction" />'>こちら</a>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>