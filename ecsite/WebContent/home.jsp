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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(document).ready(function() {
		$('.slider').bxSlider({
			auto : true,
			mode : 'horizontal',
			speed : 500,
			slideWidth : 500,

		});
	});
</script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<div id="top">
			<h2>Home</h2>
		</div>
		<div class="sliderArea">
			<div class="slider">
				<div>
					<img src="./img/bookstore.jpg">
				</div>
				<div>
					<img src="./img/jQuery_image5.jpg">
				</div>
				<div>
					<a href='<s:url action="HomeAction"/>'> <img
						src="./img/vewospr000437.jpg"></a>
				</div>
			</div>
		</div>


		<div id="text-center">
			<div id="button">
				<s:form action="HomeAction">
					<s:submit value="商品購入" />
				</s:form>
			</div>

			<div id="button">
				<s:if test="#session.admin_flg  != null ">
					<s:form action="AdminAction">
						<s:submit value="管理者" />
					</s:form>
				</s:if>
			</div>


			<s:if test="#session.id != null">
				<p>
					ログアウトする場合は <a href='<s:url action="LogoutAction"/>'>こちら</a>
				</p>
			</s:if>






		</div>

	</div>

	<div id="footer">
		<div id="text-center"></div>
		<div id="pr"></div>
	</div>


</body>
</html>