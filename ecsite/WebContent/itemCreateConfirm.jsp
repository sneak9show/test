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

<link rel="stylesheet" href="./css/style.css">
<title>ItemCreateConfirm画面</title>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<div id="main">
		<div id="top">
			<h2>ItemCreateConfirm</h2>
		</div>

		<div>
			<h3>登録する内容は以下で宜しいでしょうか？</h3>
			<table>
				<s:form action="ItemCreateCompleteAction">
					<tr id="box">
						<td><label>商品名:</label></td>
						<td><s:property value="itemName" escape="false" /></td>
					</tr>

					<tr id="box">
						<td><label>商品価格:</label></td>
						<td><s:property value="itemPrice" escape="false" /><span>円</span></td>
					</tr>

					<tr id="box">
						<td><label>在庫数:</label></td>
						<td><s:property value="itemStock" /><span>個</span></td>
					</tr>

					<tr>
						<td><s:submit value="完了"/></td>
					</tr>
				</s:form>
			</table>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>