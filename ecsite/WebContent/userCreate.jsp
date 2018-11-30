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
<title>UserCreate画面</title>


</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>

	<div id="main">
		<div id="top">
			<h2>UserCreate</h2>
		</div>

		<div>
			<s:if test="erroeMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>

			<table>
				<s:form action="UserCreateConfirmAction">
					<tr>
						<td><label>ログインID:</label></td>
						<td><input type="text" name="loginUserId"
							value="<s:property value='loginUserId' />" /></td>
						<td><s:if test="errorMessage_id != ''">
								<s:property value="errorMessage_id" escape="false" />
							</s:if></td>
					</tr>

					<tr>
						<td><label>ログインPASS:</label></td>
						<td><input type="text" name="loginPassword"
							value="<s:property value='loginPassword' />" /></td>
						<td><s:if test="erroeMessage_pass != ''">
								<s:property value="errorMessage_pass" escape="false" />
							</s:if></td>
					</tr>

					<tr>
						<td><label>ユーザー名:</label></td>
						<td><input type="text" name="userName"
							value="<s:property value='userName' />" /></td>
						<td><s:if test="erroeMessage_name != ''">
								<s:property value="errorMessage_name" escape="false" />
							</s:if></td>
					</tr>

					<s:submit value="登録" />
				</s:form>
			</table>

			<div>
				<p>
					ログイン画面に戻るには <a href='<s:url action="HomeAction" />'>こちら</a>
				</p>
				<p>
					Home画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>
				</p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>