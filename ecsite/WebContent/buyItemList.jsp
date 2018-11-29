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
<title>BuyItem画面</title>

<script type="text/javascript">
	function sub(id) {
		alert("id" + id);
		$("input.id").val(id);
		alert($("input.id"));
		$(button).submit();
	}
	function goUserInfoEditAction(element){
		 var id_value = element.id;
		 var id = document.getElementById('selectedId0').value=id_value;
		 document.getElementById('form-user-info-list').action="UserInfoEditAction";
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
			<h2>BuyItemList</h2>
		</div>
		<div>

			<h3>商品情報は以下になります。</h3>
			<s:form action="BuyItemListAction">
				<table border=1>
					<tr>
						<th>商品ID</th>
						<th>商品名</th>
						<th>値段</th>
						<th>購入ボタン</th>
					</tr>

					<s:iterator value="list">


						<tr>
							<td><s:property value="id" /><s:hidden name="id" value="%{id}"/><s:hidden name="selectedId" id="selectedId%{#st.index}" value=""/></td>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /><span>円</span></td>
<%-- 							<td><s:submit value="購入画面へ" /></td> --%>
<%-- 							<td><button  onclick='sub(<s:property value="id"/>)'>購入</button></td> --%>
							<td><button id="%{#st.index}" value="削除" class="btn" onclick='sub(<s:property value="id"/>)'>購入</button></td>
						</tr>

					</s:iterator>
				</table>

			</s:form>

			<div>
				<p>
					Home画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>
				</p>
				<p>
					マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a>
				</p>
			</div>
		</div>

	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>