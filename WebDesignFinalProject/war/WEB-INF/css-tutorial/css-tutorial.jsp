<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="css.CssTutorialInfo"%>
<%@ page import="css.CssTutorial" %>
<%
	String output = (String) request
			.getAttribute(CssTutorialInfo.OUTPUT_REQ_PARAM_NAME);
	if (output.equalsIgnoreCase(CssTutorialInfo.OUTPUT_FULL_PAGE)) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/index.css" />
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
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;希望讓大家的學習過程可以更輕鬆愉快 </span>
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
				<%
					} // if output.equalsIgnoreCase(CssTutorial.OUTPUT_FULL_PAGE)
					if (output.equals(CssTutorialInfo.OUTPUT_FULL_PAGE)
							|| output.equals(CssTutorialInfo.OUTPUT_MAIN_ONLY)) {
				%>
				<div id="content" class="contentBlock">
					<%
						} //if output.equals(CssTutorial.OUTPUT_FULL_PAGE) || output.equals(CssTutorial.OUTPUT_MAIN_ONLY)
						out.flush();
						CssTutorial tut = (CssTutorial) request
								.getAttribute(CssTutorialInfo.DISPATCH_ATTR_PARAM_NAME);
						String[] contentPath = tut.getContentFragmentPaths();
						RequestDispatcher dispatcher = null;
						for (int i = 0; i < contentPath.length; i++) {
							dispatcher = request.getRequestDispatcher(contentPath[i]);
							dispatcher.include(request, response);
						}

						if (output.equals(CssTutorial.OUTPUT_FULL_PAGE)
								|| output.equals(CssTutorial.OUTPUT_MAIN_ONLY)) {
					%>
				</div>
				<!-- end content -->

				<div class="sidebar" class="contentBlock">
					<%
						out.flush();
							contentPath = tut.getSidebarFragmentPaths();
							for (int j = 0; j < contentPath.length; j++) {
								dispatcher = request.getRequestDispatcher(contentPath[j]);
								dispatcher.include(request, response);
							}//for
					%>
				</div>
				<!-- end sidebar -->

				<div class="clear"></div>
				<%
					} // if output.equals(CssTutorial.OUTPUT_FULL_PAGE) || output.equals(CssTutorial.OUTPUT_MAIN_ONLY) 
					if (output.equals(CssTutorial.OUTPUT_FULL_PAGE)) {
				%>
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
<%
	} // if output.equals(CssTutorial.OUTPUT_FULL_PAGE)
%>