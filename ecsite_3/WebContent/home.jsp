<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="./css/style.css">
<title>Home画面</title>
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
					<s:if test="#session.id != null">
						<s:form action="MyPageAction">
							<s:submit value="マイページ"/>
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
	</div>

	<div id="main">
		<div id="top">
			<h2>Home</h2>
		</div>
	</div>

	<div id="action">
		<s:form action="HomeAction">
			<s:submit value="商品一覧へ" />
		</s:form>
	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>