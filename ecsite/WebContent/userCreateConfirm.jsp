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
<title>UserCreateConfirm画面</title>

</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>

	<div>
		<div id="main">
			<div id="top">
				<h2>UserCreateConfirm</h2>
			</div>
			<div>
				<h3>登録する内容はこちらで宜しいでしょうか？</h3>

				<table>
					<s:form action="UserCreateCompleteAction">
						<tr id="box">
							<td><label>ログインID:</label></td>
							<td><s:property value="loginUserId" escape="false" /></td>
						</tr>

						<tr id="box">
							<td><label>ログインPASS:</label></td>
							<td><s:property value="loginPassword" escape="false" /></td>
						</tr>

						<tr id="box">
							<td><label>ユーザー名:</label></td>
							<td><s:property value="userName" escape="false" /></td>
						</tr>

						<tr>
							<td><s:submit value="完了" /></td>
						</tr>
					</s:form>
				</table>
			</div>
		</div>
		<div id="footer">
			<div id="pr"></div>
		</div>

	</div>
</body>
</html>