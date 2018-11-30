<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<div id="header">
	<div id="logo-img">
		<a href='<s:url action="GoHomeAction"/>'><img
			src="./img/konozama.png"></a>

		<ul>
			<li><s:if test="#session.id == null">
					<s:form action="LoginAction">
						<%-- 							<s:submit value="ログイン" /> --%>
						<div class="loginButton">ログイン</div>
					</s:form>
				</s:if></li>

			<li><s:if test="#session.id != null">
					<s:form action="LogoutAction">
						<%-- 							<s:submit value="ログアウト" /> --%>
						<div class="loginButton">ログアウト</div>
					</s:form>
				</s:if></li>

			<li><s:if test="#session.id != null">
					<s:form action="MyPageAction">
						<%-- 							<s:submit value="マイページ" /> --%>
						<div class="loginButton">マイページ</div>
					</s:form>
				</s:if></li>

			<li><s:form action="UserCreateAction">
					<%-- 						<s:submit value="新規登録" /> --%>
					<div class="loginButton">新規登録</div>
				</s:form></li>
		</ul>
	</div>
	<div id="pr"></div>
	</div>

	<script type="text/javascript">
		$(".loginButton").on("click", function(){
	    	$(this).parent().submit();
	    });
	</script>
