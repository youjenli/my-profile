<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>Html 語法重點整理</h2>
<ul>
	<li>HTML 標籤(tag)是由角括號（ angle brackets )包住的關鍵字所組成，例如 &lt;html&gt;</li>
	<li>HTML 通常成對出現，例如︰&lt;b&gt; and &lt;/b&gt;</li>
	<li>成對出現的標籤第一個稱為起始標籤( start tag )，第二個稱為結尾標籤 (end tag )</li>
	<li>HTML 元素 (element) 通常由起始標籤( start tag / opening tag ) 開始</li>
	<li>HTML 元素結束於結尾標籤( end tag / closing tag )</li>
	<li>HTML 元素內容( element content )是夾在起始標籤與結尾標籤之間的一切內容</li>
	<li>有些 HTML 元素沒有內容( empty content ), 例如 &lt;br /&gt;</li>
	<li>沒有內容的元素必須以斜線在起始標籤中結尾( closed in the start tag )</li>
	<li>&lt;html&gt; 與 &lt;/html&gt; 標籤之間的內容描述整個網頁</li>
	<li>&lt;body&gt; 與 &lt;/body&gt; 標籤之間的內容是網頁在瀏覽器上的可視內容</li>
	<li>HTML 屬性以成對的 名稱/值 (name/value) 出現，例如: name="value" 屬性的要以雙引號包住</li>
	<li>雙引號包住屬性是比較常見的，例如type="text/css"，但是單引號也允許使用。 <br />在某些稀有的情況下，屬性的值含有引號，這時候就需要單引號雙引號同時使用，例如︰
		name='John "ShotGun" Nelson'</li>
	<li>屬性的名稱和值是不分大小寫的，但是W3C在 HTML 4 的標準中建議屬性的名稱和值用小寫，下一版的 (X)HTML
		會要求小寫的屬性名稱和值。</li>
	<li>HTML 和 CSS 的 URL 連結中，”/”起始表示根目錄，沒有則是從原本網頁URL之下的目錄開始找。此外可以用
		“../” 語法寫下相對目錄關係。</li>
</ul>