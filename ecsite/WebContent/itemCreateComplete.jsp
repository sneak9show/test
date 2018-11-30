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
	<title>ItemCreateComplete画面</title>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<div id="main">
		<div id="top">
			<h2>ItemCreateComplete</h2>
		</div>

		<div>
			<h3>商品情報の登録が完了致しました。</h3>
			<div>
				<a href='<s:url action="AdminAction"/>'>管理者画面へ</a>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>