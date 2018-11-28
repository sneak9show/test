<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<link rel="stylesheet" href="./css/style.css">
<title>BuyItemConfirm画面</title>

	<script type="text/javascript">
		function submitAction(url){
			$('form.buy').attr('action',url);
			$('form.buy').submit();
		}
	</script>

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
			<h2>BuyItem</h2>
		</div>
		<div>
			<s:form class="buy">
			<tr>
				<td>商品名</td>
				<td><s:property value="session.item_name"/></td>
			</tr>

			<tr>
				<td>値段</td>
				<td><s:property value="session.total_price" /><span>円</span></td>
			</tr>

			<tr>
				<td>購入個数</td>
				<td><s:property value="session.count" /><span>個</span></td>
			</tr>

			<tr>
				<td>支払い方法</td>
				<td><s:property value="session.pay" /></td>
			</tr>

			<tr>
				<td><br></td>
			</tr>

			<tr>
				<td><input type="button" value="戻る"
					onclick="submitAction('HomeAction')"/></td>
				<td><input type="button" value="完了"
					onclick="submitAction('BuyItemConfirmAction')"/> </td>
			</tr>
			</s:form>
		</div>

		<div>
			<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
		</div>

	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>