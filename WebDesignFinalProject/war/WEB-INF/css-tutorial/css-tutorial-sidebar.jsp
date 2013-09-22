<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="css.CssTutorialInfo" %>
<%
  String topic = CssTutorialInfo.TUTORIAL_TOPIC_REQ_PARAM;
  String output = CssTutorialInfo.OUTPUT_REQ_PARAM_NAME;
%>
<div class="sidebar-inner">
<h4>CSS 教學內容</h4>
<ol>
  <li><span class="ajaxLink" onclick="replaceContent('/css-tutorial?<%=topic%>=basic&<%=output%>=content');">CSS 基礎介紹</span></li>
  <li><span class="ajaxLink" onclick="replaceContent('/css-tutorial?<%=topic%>=selector&<%=output%>=content');">CSS 選擇器</span></li>
  <li><span class="ajaxLink" >CSS 使用方式</span></li>
  <li><span class="ajaxLink" >CSS 單位與顏色</span></li>
  <li><span class="ajaxLink" >CSS 背景</span></li>
  <li><span class="ajaxLink" >CSS 文字</span></li>
  <li><span class="ajaxLink" >CSS 字體</span></li>
  <li><span class="ajaxLink" >CSS 清單</span></li>
  <li><span class="ajaxLink" >CSS 表格</span></li>
  <li><span class="ajaxLink" >CSS Box Model</span></li>
  <li><span class="ajaxLink" >CSS 邊框</span></li>
  <li><span class="ajaxLink" >CSS Outline</span></li>
  <li><span class="ajaxLink" >CSS 邊際(Margin)</span></li>
  <li><span class="ajaxLink" >CSS 填充(Padding)</span></li>
  <li><span class="ajaxLink" >CSS 內容(Content)</span></li>
  <li><span class="ajaxLink" >CSS 維度(Dimension)</span></li>
  <li><span class="ajaxLink" >CSS 顯示與透明(Display &amp; Visibility)</span></li>
  <li><span class="ajaxLink" >CSS 定位(Positioning)</span></li>
  <li><span class="ajaxLink" >CSS 詳細參考</span></li>
</ol>
</div>