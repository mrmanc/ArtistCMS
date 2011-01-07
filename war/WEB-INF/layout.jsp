<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<stripes:layout-definition>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!--[if lt IE 7.]>
		<script defer type="text/javascript" src="pngfix.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="css/site.css">
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<title>Sue Crossfield Ceramics</title>
</head>
	<body>
		<div align="center">
			<table class="layout" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td class="left side">&nbsp;</td>
					<td class="content">
						<ul class="menu">
							<li><a href="index.html">About (home)</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="links.html">Links</a></li>
							<li><a href="cv.html">CV</a></li>
						</ul>
						<!-- Page begins -->
						<stripes:layout-component name="contents" />
						<!-- Page ends -->
					</td>
					<td class="right side">&nbsp;</td>
				</tr>
				<tr class="bottom">
					<td class="left">&nbsp;</td>
					<td class="centre">&nbsp;</td>
					<td class="right">&nbsp;</td>
				</tr>
			</table>
		</div>
		<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-352611-1");
pageTracker._trackPageview();
} catch(err) {}</script>
	</body>
</html>
</stripes:layout-definition>
