<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>CSS 選擇器</h2>
<a href="http://www.w3schools.com/css/css_syntax.asp"><img
	src="/images/selector.gif" /> </a>
<h6>
	CSS 語法結構，上圖來自<a href="http://www.w3schools.com/css/css_syntax.asp">W3
		school</a>，版權為其所有
</h6>
<br />
<h3>元素選擇器︰</h3>
<p>
	上面的圖除了展現CSS 語法結構以外，本身就是<b>元素選擇器</b>的範例<br /> 元素選擇器會選取整個 html
	文件中的特定元素供網頁開發者設定樣式，範例:
</p>
<div class="codeBlock">
	<pre>p { color: red; }</pre>
</div>
<p>這範例選取了網頁上所有的 &lt;p&gt; 元素，設定內容文字顏色為紅色</p>
<div class="clear"></div>
<h3>ID 選擇器︰</h3>
<p>id 選擇器會選取 html 文件中已指定 ID 的元素供網頁開發者設定樣式，範例:</p>
<div class="codeBlock">
	<pre>#para1 { text-align:center; color:red; } </pre>
</div>
<p>這樣式選取網頁中 ID 為 para1 的元素，設定文字對齊在中間，文字顏色是紅色</p>
<div class="clear"></div>
<h3>類別(class)選擇器︰</h3>
<p>類別選擇器會選取 html 文件中已指定類別名稱的元素供網頁開發者設定樣式，範例:</p>
<div class="codeBlock">
	<pre> .customClass { color:red; } </pre>
</div>
<p>如此一來，所有屬於 customClass 類別的元素，文字的顏色都變成紅色啦</p>
<div class="clear"></div>
<p>一個元素可以設定為多個類別，以空白分隔，例如︰
<div class="codeBlock">
	&lt;div&nbsp;class="class1&nbsp;class2"&gt;&lt;/div&gt;&lt;/p&gt;</div>
<p>
	<b>id 和 class 的名稱開頭不要是數字，這在 FireFox 瀏覽器下可能會無法作用。</b>
</p>
<div class="clear"></div>
<h3>選擇器合併使用</h3>
<p>選擇器可以合併使用，這會變成一種邏輯，可以在特定條件下選取特定元素</p>
<h2>後代選擇器 (Descendant Selectors)︰</h2>
<p>
	後代選擇器設定的樣式會<b>推翻類別與id選擇器的樣式</b>。使用方法是寫下兩個以上的元素，後面的元素是前面元素的後代元素，範例︰
</p>
<div class="codeBlock">
	<pre> li a { text-decoration:none } </pre>
</div>
<p>這會選擇所有包在清單內容&lt;li&gt;裡面的錨點元素&lt;a&gt;，設定沒有文字裝飾效果</p>
<p>除此之外還可以指定某元素裡面的所有特定類別，例如︰</p>
<div class="codeBlock">
	<pre> p .someClass { text-align:center; } </pre>
</div>
<p>如此一來所有在段落元素&lt;p&gt;底下，類別是 someClass 的元素都會被選取到，然後設定文字對齊在中間</p>
<div class="clear"></div>
<h3>子選擇器 ( Child selector )︰</h3>
<p>
	子選擇器是指當後面寫下的元素(子元素)是前面寫下的元素(父母元素)的直接後代，樣式設定才會產生作用。<br /> 至於什麼是直接後代呢?
	請順著以下範例就會了解︰
</p>
<div class="codeBlock">
	<pre> div &gt; strong { text-decoration: underline; }</pre>
</div>
<p>
	上述意思是說，當強調字體元素&lt;strong&gt;是分區元素&lt;div&gt;的直接後代時，所有&lt;strong&gt;元素的文字內容都加底線。<br />
	直接後代的 html 文件結構就像這樣︰
</p>
<div class="codeBlock">
<pre> &lt;div&gt;
    &lt;strong&gt; example text &lt;/strong&gt;
&lt;/div&gt; </pre>
</div>
<p>這範例中的&lt;strong&gt;是&lt;div&gt;的直接後代，如此一來 example strong
	就會有底線，但是以下範例的 not direct child element
	就不會有底線，因為&lt;div&gt;與&lt;strong&gt;之間還隔了&lt;p&gt;︰</p>
<div class="codeBlock">
<pre> &lt;div&gt; 
    &lt;p&gt; 
        &lt;strong&gt; not direct child	element &lt;/strong&gt; 
    &lt;/p&gt; 
&lt;/div&gt;
</pre>
</div>
<P>
	<b>注意︰IE 7 之前的版本不支援子選擇器。</b>
</P>
<div class="clear"></div>
<h3>全域選擇器(Universal selector)︰</h3>
<p>全域選擇器以 * 表示，代表選取 html 文件中的所有元素，範例如下︰</p>
<div class="codeBlock">
	<pre> * { font-family: Verdana, Arial, sans-serif; } </pre>
</div>
<p>所有 html 文件中的元素字型都在一次樣式設定中完成。</p>
<div class="clear"></div>
<h3>相鄰兄弟選擇器(Adjacent sibling selector)︰</h3>
<p>相鄰兄弟是描述網頁標記的串流中，緊鄰的兩個元素間的關係。 相鄰兄弟以 + 號表示︰</p>
<div class="codeBlock">
	<pre> li + li { font-size:200%; } </pre>
</div>
<p>
	當&lt;li&gt;的前一個元素也是&lt;li&gt;時，後面的&lt;li&gt;元素樣式就會產生作用。 <br /> <b>這種選擇器未廣泛受支援，特別是
		IE 6</b>，其他主流瀏覽器則是支援的。
</p>
<div class="clear"></div>
<h3>屬性選擇器 (Attribute selector)︰</h3>
<p>屬性選擇器有四種方式可以找到屬性相符的元素，請看以下範例︰
<ol>
	<li><h4>[attribute] - 依屬性搜尋︰</h4>
		<div class="codeBlock">
			<pre> a [href] { text-decoration: none; } </pre>
		</div>
		<p>每當錨元素&lt;a&gt;存有 href 屬性時，錨元素的文字內容將沒有任何修飾。</p>
	</li>
	<li><h4>[attribute=value] - 依屬性值搜尋︰</h4>
		<div class="codeBlock">
			<pre>a [href="csscookbook.com"] { text-decoration: none; }</pre>
		</div>
		<p>這種屬性值的比對方式比較嚴僅，唯有錨元素&lt;a&gt;且 href 屬性值是 csscookbook.com ，也就是
			&lt;a href="csscookbook.com"&gt; 的錨元素文字內容才會沒有修飾。</p>
	</li>
	<li>
		<h4>[attribute~=value] - 搜尋屬性的值是否包含以空白分隔的比對內容︰</h4>
		<div class="codeBlock">
			<pre>a [rel~="copyright"] { text-decoration: none; }</pre>
		</div>
		<p>
			當 "copyright" 包含在錨元素的 rel 屬性中，且比對的值有使用空白與其他字串分隔時，錨元素文字內容會沒有修飾。 <br />什麼意思呢?
			像以下範例中的 sample text 文字就會套用上面範例設定的樣式︰
		</p>
		<div class="codeBlock">
			<pre>&lt;a rel="This isacopyrightofmartin" &gt;sample text&lt;/a&gt;</pre>
		</div>
	</li>
	<li>
		<h4>[attribute|= value] - 在屬性值以 value 值起始，或是以value值加上 "-"
			起始下會套用樣式︰</h4>
		<div class="codeBlock">
			<pre>a [href |= "digital"] { text-decoration: none; }</pre>
		</div>
		<p>以上範例就是設定在錨元素是 &lt;a href="digitalworld.com"&gt;&lt;/a&gt;，或
			&lt;a href="digital-tv.com"&gt;&lt;/a&gt; 時， 錨元素文字內容會沒有修飾。</p>
	</li>
</ol>
<p>
	IE 7 (含) 以上的瀏覽器要加上 DocType 才會支援屬性選擇器，且 <b>IE 7 以下的瀏覽器不支援這標準</b>。其他的瀏覽器都有支援。
</p>
<div class="clear"></div>
<h3>虛擬類別(Pseudo-classes)︰</h3>
<p>CSS 有一些特殊的選擇器稱為虛擬類別(Pseudo-classes)，可以在元素達成某些條件下設定樣式以增加特效︰</p>
<ul>
	<li><h4>[element]:link</h4>
		<p>設定連結元素平時呈現的樣式，最常見的用法就是 a:link，範例︰</p>
		<div class="codeBlock">
			<pre>a:link { text-decoration:none; }</pre>
		</div>
		<p>設定超連結文字平時沒有任何修飾。</p>
	</li>
	<li>
		<h5>[element]:visited</h5>
		<p>設定已經拜訪過的連結要呈現的樣式，最常見的用法就是 a:visited，範例︰</p>
		<div class="codeBlock">
			<pre>a:hover { color:blue; }</pre>
		</div>
		<p>設定已經拜訪過的連結將呈現藍色。</p>
	</li>
	<li>
		<h5>[element]:hover</h5>
		<p>當滑鼠游標移到元素上時，改變元素的樣式︰</p>
		<div class="codeBlock">
			<pre>span:hover { color:red; }</pre>
		</div>
		<p>當滑鼠游標移到&lt;span&gt;元素包含的內容上時，內容文字變成紅色。</p>
	</li>
	<li>
		<h5>[element]:active</h5>
		<p>滑鼠游標點選特定元素的瞬間要呈現的樣式， 語法範例︰</p>
		<div class="codeBlock">
			<pre>span:active { color:yellow; }</pre>
		</div>
		<p>按下&lt;span&gt;會讓內容文字變成黃色</p>
	</li>
	<li>
		<h5>[element]:first-child</h5>
		<p>這個虛擬類別會選擇指定元素的第一個子元素，範例如下︰</p>
		<div class="codeBlock">
			<pre>p:first-child { color:blue; }</pre>
		</div>
		<p>在 &lt;p&gt; 元素內的第一個元素顏色是藍色的。</p>
		<p>在 IE 8 (含) 以前的 IE 瀏覽器需要加上 DocType，才會呈現 :first-child 虛擬類別設定的效果。</p>
	</li>
	<li><h4>[element]:focus</h4>
		<p>這可以在指定元素獲得焦點時，設定他們的樣式，但是這只有「能夠接受鍵盤事件，或是其他使用者輸入事件的元素」才可以透過這種選擇器設定它們取得焦點時的樣式。
			範例︰</p>
		<div class="codeBlock">
			<pre>input:focus { background-color: yellow; }</pre>
		</div>
		<p>在表單的&lt;input&gt;元素獲得焦點時，設定背景為黃色。</p>
	</li>
	<li>
		<h4>[element]:lang(n)</h4>
		<p>選取擁有 lang 屬性，而且屬性值的開頭是 n 的元素。此外屬性的值必須是單一的字，或是在 n 的後面接上連字號
			"-"，例如 en-us。使用範例如下︰</p>
		<div class="codeBlock">
			<pre>p:lang(it) { background-color: yellow; }</pre>
		</div>
		<p>擁有 lang 屬性的&lt;p&gt;，且屬性值的開頭是 it 的&lt;p&gt;之背景會變成黃色。</p>
	</li>
	<li><p>虛擬類別可以配合類別選擇器一起使用，語法是selector.class:pseuo-classes。
			範例如下︰</p>
		<div class="codeBlock">
			<pre>span.red:hover { color:red; }</pre>
		</div>
		<p>所有包含在&lt;span&gt;之中，類別是 red 的元素，在游標移動到上方時，背景會變成黃色</p>
	</li>
</ul>
<div class="clear"></div>
<h3>虛擬元素( pseudo-element )︰</h3>
<p>在虛擬類別之外，還有虛擬元素( pseudo-element ) 可以指定 html 元素的某一部分，替 元素增加特效。</p>
<ul>
	<li><h4>[element]:first-line</h4>
		<p>選擇元素的第一行，也就是可以設定元素的第一行文字樣式，語法範例如下︰</p>
		<div class="codeBlock">
			<pre>p:first-line { font-variant: small-caps; }</pre>
		</div>
		<p>設定&lt;p&gt;元素的文字內容第一行字體要變成縮小的大寫字母。</p>
		<p>:first-line 虛擬元素只能用在區域級的( block-level )元素。以下屬性可在 :first-line
			虛擬元素中設定︰<br />
			font、color、background、word-spacing、letter-spacing、text-decoration、vertical-align、text-transform、line-height、clear</p>
	</li>
	<li><h4>[element]:first-letter</h4>
		<p>就是選擇元素的第一個字母以設定樣式，語法範例︰</p>
		<div class="codeBlock">
			<pre>p.article:first-letter { color:green; }</pre>
		</div>
		<p>設定 &lt;p&gt; 元素底下所有屬於 article 類別的元素，第一個字母的顏色為綠色。</p>
		<p>
			:first-letter 只能用在區域級的元素，以下是可用在 :first-letter 屬性的元素︰<br />
			font、color、background、margin、padding、border、text-decoration、vertical-align(
			在float 的屬性值是 none 的情況下 )、text-transform、line-height、float、clear
		</p>
	</li>
	<li>
		<h4>[element]:before</h4>
		<p>這可以在選擇的元素前面插入一些內容，通常使用 CSS 的 content 屬性設定內容，範例語法是︰</p>
		<div class="codeBlock">
			<pre>p:before {	content:"Read this: "; }</pre>
		</div>
		<p>這可以在網頁裡面所有&lt;p&gt;元素的開頭插入 Read this: 字串。</p>
	</li>
	<li>
		<h5>:after</h5>
		<p>顧名思義就是在選擇的元素後面接上一些內容，用來指定附加內容的屬性一樣是 content。範例語法是︰</p>
		<div class="codeBlock">
			<pre>p:after { content:" - remember this! "; }</pre>
		</div>
		<p>這可以在網頁裡面所有&lt;p&gt;元素的結尾插入 remember this! 字串。</p>
	</li>
</ul>
<div class="clear"></div>
<h3>群組選擇器</h3>
<p>CSS
	可以群組選擇器。假如有三個元素都有相同的樣式，那這三個元素的樣式不必分開宣告，可以用逗號區隔不同的選擇器，在單一敘述中宣告樣式 。範例如下︰</p>
<div class="codeBlock">
	<pre> p, h1, h2 { color:blue; }</pre>
</div>
<p>這個樣式設定會讓&lt;p&gt;、&lt;h1&gt;、&lt;h2&gt; 元素內的字都變成藍色。</p>
<div class="clear"></div>
<h3>巢狀套用(nested)選擇器</h3>
<p>巢狀套用選擇器可以設定元素在符合多個選擇器條件才會套用特定樣式。不同的選擇條件之間以空白字分開。語法範例如下︰</p>
<div class="codeBlock">
	<pre>P .marked { color:blue; text-align:center; }</pre>
</div>
<p>在&lt;p&gt;元素中，類別名稱是 marked 的元素才會套用上述樣式。</p>