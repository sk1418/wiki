<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>%title%</title>
<link rel="stylesheet" type="text/css" href="%root_path%template/style/main.css" />
<link type="text/css" rel="stylesheet" href="%root_path%template/style/shCore.css"/>
<link type="text/css" rel="stylesheet" href="%root_path%template/style/shCoreRDark.css"/>
<script type="text/javascript" src="%root_path%template/js/jquery.js"></script>
<!--For code highlighting-->
<script type="text/javascript" src="%root_path%template/js/shCore.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushPlain.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushVim.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushBash.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushCss.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushJava.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushJScript.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushPython.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushSql.js"></script>
<script type="text/javascript" src="%root_path%template/js/shBrushXml.js"></script>

<script type="text/javascript">
$(document).ready(function() {
		SyntaxHighlighter.all();
		if (window.innerWidth >= 460) {
		var toggler = $('<div class="toggler" title="Toggle Table Of Content">Table Of Content</div>');
		toc = $('.toc');
		toc.wrap('<div class="tocWrap">');

		$('.tocWrap').prepend(toggler)
		.delay(500)
		.fadeTo(500, '0.7')
		.hover(function() {
			$(this).stop().fadeTo(300, '0.9');
			}, function() {
			$(this).stop().fadeTo(300, '0.7');
			});

		$('html').keypress(function(e) {
			if (e.shiftKey && (e.charCode || e.keyCode) == '90') {
			e.preventDefault();
			$('div.tocWrap').toggle(200);
			}
			});

		toggler.click(function() {
				$('div.toc').slideToggle(300);
				});
		}

		$("a,h1,h2,h3,h4,h5,h6").filter(function(index){
			return $(this).text()=='!Important!';
				}).addClass("importantMarker");

		

});



</script>
</head>
<body >
<header id="header">
<div id="logo" style="font-size: 22pt;text-align:center;"><a href="#">Kent's Wiki</a></div>
</header>
<div id="wrap">
<div id="content">
%content%
</div>
</div>
<div id="footer">
<a href="http://www.vim.org" target="_blank"><img border="0" src="%root_path%template/images/vimLogo.png" alt="Created with Vim" height="36" width="90"></a>
</div>
</body>
</html>
