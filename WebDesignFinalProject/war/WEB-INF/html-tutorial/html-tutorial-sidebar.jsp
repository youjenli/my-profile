<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="html.HtmlTutorial" %>
<%
  String topic = HtmlTutorial.TUTORIAL_TOPIC_REQ_PARAM;
  String output = HtmlTutorial.OUTPUT_REQ_PARAM_NAME;
%>
<div class="sidebar-inner">
	<h4>Html 標籤以功能分類</h4>
	<ol>
	    <li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=announce&<%=output%>=content');">Html
				html 重點複習</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=doctype&<%=output%>=content');">Html
				DocType 介紹</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=pageinfo&<%=output%>=content');">文件資訊宣告</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=structure&<%=output%>=content');">文件結構</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=anchor&<%=output%>=content');">錨點與水平線</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=title&<%=output%>=content');">標題</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=picture&<%=output%>=content');">圖片與相關技術</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=widget&<%=output%>=content');">獨立的表單元件</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=textFont&<%=output%>=content');">改變字體</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=contentDisplay&<%=output%>=content');">改變文字呈現方式</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=textHint&<%=output%>=content');">文字內容提示</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=form&<%=output%>=content');">表單(form)</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=table&<%=output%>=content');">表格(table)</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=defList&<%=output%>=content');">定義清單(
				Definition List)</span></li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=list&<%=output%>=content');">清單(List)</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=div&<%=output%>=content');">劃分區域</span></li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=frameset&<%=output%>=content');">框架(frame)</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=object&<%=output%>=content');">物件(object)</span>
		</li>
		<li><span class="ajaxLink"
			onclick="replaceContent('/html-tutorial.html?<%=topic%>=color-name&<%=output%>=content');">Html
				顏色名稱表</span></li>
		<li><span class="ajaxLink" onclick="replaceContent('/working?output=content');">所有元素詳盡列表</span></li>
	</ol>
</div>
<!-- end sidebar-inner -->