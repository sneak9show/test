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
			<h2>Home</h2>
		</div>

		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入" />
			</s:form>

			<s:if test="#session.admin_flg != null">
				<s:form action="AdminAction">
					<s:submit value="管理者" />
				</s:form>
			</s:if>


			<s:if test="#session.id != null">
				<p>
					ログアウトする場合は
					<a href='<s:url action="LogoutAction"/>'>こちら</a>
				</p>
			</s:if>






		</div>

	</div>

	<div id="footer">
		<div id="text-center">

		</div>
		<div id="pr"></div>
	</div>

</body>
</html>