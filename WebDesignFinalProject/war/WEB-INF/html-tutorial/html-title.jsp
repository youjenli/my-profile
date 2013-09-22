<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h3>&lt;h1&gt;~&lt;h6&gt;︰</h3>
<p>由大到小定義六種不同大小的標題<br />
標題的內容結束之後會斷行
</p>
<%
   for (int count = 1 ; count <= 6 ; count ++ ){
     out.println("<h" + count + ">這是 &lt;h" + count + "&gt; 的大小 </h" + count +">" ); 
   }
%>