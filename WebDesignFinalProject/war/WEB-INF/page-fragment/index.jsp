<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/index.css" />
<script type="text/javascript" src="/js/header.js"></script>
<title>Mtyjl 的網頁設計學習心得筆記</title>
</head>
<body>
	<div id="container">
		<a name="top"></a>
		<div id="container-inner">
			<div id="header">
				<h1>
					<a href="/index.html">Mtyjl 的網頁網頁設計學習筆記</a>
				</h1>
				<p>網頁設計的心得整理</p>
				<div class="clear"></div>
			</div>
			<!-- end header -->
			<div id="banner">

				<div id="slogan">
					<p>
						<span class="slogan-big">這個網站的目地是要收集與整理網頁設計資源<br />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;希望讓大家的學習過程可以更輕鬆愉快
						</span>
					</p>
				</div>
				<!-- end slogan -->

				<div id="nav">
					<jsp:include page="/WEB-INF/page-fragment/navigation.jsp"></jsp:include>
				</div>
				<!-- end nav -->

			</div>
			<!-- end banner -->
			<a name="ctAnchor"></a>
			<div id="main">

				<div id="content" class="contentBlock">
					<jsp:include page="/WEB-INF/page-fragment/index-announce.jsp"></jsp:include>
				</div>
				<!-- end content -->

				<div class="sidebar" class="contentBlock">
					<jsp:include page="/WEB-INF/page-fragment/index-sidebar.jsp"></jsp:include>
				</div>
				<!-- end sidebar -->

				<div class="clear"></div>
			</div>
			<!-- end main -->
		</div>
		<!-- end container-inner -->
	</div>
	<!-- end container -->

	<div id="footer">
		<p>
			&copy; 網頁設計學習筆記 2010. Design by <a href="#top">Mtyjl</a>
		</p>
	</div>
	<!-- end footer -->

	<div style="text-align: center; font-size: 1em;">
		網頁設計參考自 <a href="http://www.freewebtemplates.com/">free website
			templates</a> 的樣板.
	</div>
</body>
</html>