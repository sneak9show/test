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
<title>login画面</title>


</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>

	<div id="main">
		<div id="top">
			<h2>Login</h2>
		</div>
		<div>
			<h3>商品を購入するにはログインをお願いします。</h3>
			<s:form action="LoginAction">
			<tr>
				<td><label>ユーザーID:</label></td>
				<td><s:textfield name ="loginUserId"/></td>
			</tr>
			<tr>
				<td><label>パスワード:</label></td>
				<td><s:password name="loginPassword"/></td>
			</tr>
				<s:submit value="ログイン" />
			</s:form>
			<br>

		<div id="text-link">
			<p>新規ユーザー登録は
				<a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
			<p>Home画面へ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>

	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>