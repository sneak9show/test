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
<title>UserList画面</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>

<style type="text/css">
/* TAG LAYOUT */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-famiry: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}
/* ID LAYOUT */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	text-align: center;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#text-exit {
	display: line-block;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}
</style>

<script type="text/javascript">
	function sub(id) {
		$("input.selectedId").val(id);
		$("form.action").submit();
	}

</script>

</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<h2>UserList</h2>
		</div>
		<div>
			<s:if test="userList == null">
				<h3>登録されているユーザー情報はありません。</h3>
			</s:if>

			<s:elseif test="message == null">
				<h3>登録されているユーザーは以下になります。</h3>
					<table border="1">

						<tr>
							<th>ID</th>
							<th>ログインID</th>
							<th>パスワード</th>
							<th>名前</th>
							<th>admin_flg</th>
							<th>登録日</th>
						</tr>

						<s:iterator value="userList">


							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="loginId" /></td>
								<td><s:property value="loginPassword" /></td>
								<td><s:property value="userName" /></td>
								<td><s:property value="admin_flg" /></td>
								<td><s:property value="insert_date" /></td>
							</tr>

						</s:iterator>

					</table>

				<s:form action="UserListDeleteConfirmAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="全件削除" method="delete" />
				</s:form>
			</s:elseif>

			<div id="text-exit">
				<p>
					管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a>
				</p>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>