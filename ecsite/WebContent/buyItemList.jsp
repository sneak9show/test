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

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<%-- scriptを使うときは↑を入れないと使えない。 --%>

<link rel="stylesheet" href="./css/style.css">
<title>BuyItem画面</title>

<script type="text/javascript">
	function sub(id) {
		$("input.selectedId").val(id);
		$("form.action").submit();
	}

</script>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="main">
		<div id="top">
			<h2>BuyItemList</h2>
		</div>
		<div>

			<h3>商品情報は以下になります。</h3>
			<s:form action="BuyItemListAction" class="action">
				<table border=1>
					<tr>
						<th>商品ID</th>
						<th>商品名</th>
						<th>値段</th>
						<th>購入ボタン</th>
					</tr>

					<s:iterator value="list">


						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /><span>円</span></td>
<%-- 							<td><s:submit value="購入画面へ" /></td> --%>
							<td><button  onclick='sub(<s:property value="id"/>)'>購入</button></td>
						</tr>

					</s:iterator>
				</table>
				<s:hidden name="id" class="selectedId"/>
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