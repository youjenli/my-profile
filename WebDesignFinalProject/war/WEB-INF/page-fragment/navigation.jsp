<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="html.HtmlTutorialInfo"%>
<%@ page import="proposal.ProposalInfo"%>
<%@ page import="css.CssTutorialInfo"%>
<ul>
	<li><span class="ajaxLink"
		onclick="replaceMain('/html-tutorial?<%=HtmlTutorialInfo.OUTPUT_REQ_PARAM_NAME%>=<%=HtmlTutorialInfo.OUTPUT_MAIN_ONLY%>');">Html
			教學</span>
	</li>
	<li><span class="ajaxLink"
		onclick="replaceMain('/css-tutorial?<%=CssTutorialInfo.OUTPUT_REQ_PARAM_NAME%>=<%=CssTutorialInfo.OUTPUT_MAIN_ONLY%>');">CSS
			2.1 教學</span>
	</li>
	<li><span class="ajaxLink"
		onclick="replaceMain('/working?output=main');">Javascript 教學</span>
	</li>
	<li><span class="ajaxLink"
		onclick="replaceMain('/proposal.html?<%=ProposalInfo.OUTPUT_FULL_PAGE_REQ_PARAM%>=<%=ProposalInfo.OUTPUT_MAIN_ONLY%>');">網站專案報告書</span>
	</li>
</ul>