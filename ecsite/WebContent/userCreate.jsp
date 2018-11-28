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
						<td><input type="text" name="loginUserId" value="<s:property value='loginUserId' />" /></td>
						<td>
							<s:if test="erroeMassage_id != ''">
								<s:property value="errorMassage_id" escape="false" />
							</s:if>
						</td>
					</tr>

					<tr>
						<td><label>ログインPASS:</label></td>
						<td><input type="text" name="loginPassword" value="<s:property value='loginPassword' />" /></td>
						<td>
							<s:if test="erroeMassage_pass != ''">
								<s:property value="errorMassage_pass" escape="false" />
							</s:if>
						</td>
					</tr>

					<tr>
						<td><label>ユーザー名:</label></td>
						<td><input type="text" name="userName" value="<s:property value='userName' />" /></td>
						<td>
							<s:if test="erroeMassage_name != ''">
								<s:property value="errorMassage_name" escape="false" />
							</s:if>
						</td>
					</tr>

					<s:submit value="登録" />
				</s:form>
			</table>

			<div>
				<p>ログイン画面に戻るには <a href='<s:url action="HomeAction" />'>こちら</a></p>
				<p>Home画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>

		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>