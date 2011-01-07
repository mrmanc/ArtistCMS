<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<stripes:layout-render name="/WEB-INF/layout.jsp">
	<stripes:layout-component name="contents">
						<!-- Page begins -->
						<h1>Gallery</h1>
						<table width="750" border="0" cellpadding="5" cellspacing="0">
							<tr>
								<td class="centre-align"><a href="images/gallery/20080121/IMG_2242.JPG"> <img src="images/gallery/thumbnails/20080121/IMG_2242.JPG" width="150" height="200" border="0"> </a> <br >
									Mystic</td>
								<td class="centre-align" width="33%"><a href="images/gallery/20080121/IMG_2239.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2239.JPG" width="150" height="200" border="0"></a> <br >
									Blonde in Pale Blue &amp; Lady with Straw Hat </td>
								<td class="centre-align" width="33%"><a href="images/gallery/20080121/IMG_2221.JPG"> <img src="images/gallery/thumbnails/20080121/IMG_2221.JPG" width="150" height="200" border="0"> </a> <br >
									Two Divas </td>
								<td class="centre-align"><a href="images/gallery/20080121/IMG_2204.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2204.JPG" width="150" height="200" border="0"></a> <br >
									Blonde with Bird on Hat</td>
							</tr>
						</table>
						<table border="0" cellspacing="0" cellpadding="5" width="750">
							<tr>
								<td class="centre-align" width="33%"><a href="images/gallery/20080121/IMG_2197.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2197.JPG" width="200" height="150" border="0"></a> <br >
									Three Silhouettes </td>
								<td class="centre-align" width="33%"><a href="images/gallery/20080121/IMG_2182.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2182.JPG" width="200" height="150" border="0"></a> <br >
									Blonde with Fish &amp; Blonde with Bird </td>
								<td class="centre-align" width="33%"><a href="images/gallery/20080121/IMG_2224.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2224.JPG" width="200" height="150" border="0"></a> <br >
									Four Sillhouettes </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="images/gallery/20080121/IMG_2156.JPG"><img src="images/gallery/thumbnails/20080121/IMG_2156.JPG" width="150" height="200" border="0"></a> <br >
									Arbella</td>
								<td class="centre-align"><a href="images/gallery/20080121/IMG_2163.JPG"> <img src="images/gallery/thumbnails/20080121/IMG_2163.JPG" width="150" height="200" border="0"> </a> <br >
									Lovers</td>
								<td class="centre-align"><a href="images/gallery/20080121/IMG_2192.JPG"> <img src="images/gallery/thumbnails/20080121/IMG_2192.JPG" width="150" height="200" border="0"> </a> <br >
									Girl in Denim Cap </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="http://static.flickr.com/45/118080103_b9f9a81bda_o.jpg"><img src="images/gallery/thumbnails/0105.jpg" border="0"></a> <br >
									2 Figures &amp; Cat </td>
								<td class="centre-align"><a href="http://static.flickr.com/56/118080098_4306430fa3_o.jpg"> <img src="images/gallery/thumbnails/0205.jpg" border="0"> </a> <br >
									3 Figures &amp; Cat </td>
								<td class="centre-align"><a href="http://static.flickr.com/52/118080071_2fdd48a433_o.jpg"> <img src="images/gallery/thumbnails/2205.jpg" border="0"> </a> <br >
									2 Geisha Figures </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="http://static.flickr.com/43/118080087_a1a8a57ba3_o.jpg"> <img src="images/gallery/thumbnails/0905.jpg" border="0"> </a> <br >
									Head with Hat </td>
								<td class="centre-align"><a href="http://static.flickr.com/46/118080042_581f527d32_o.jpg"> <img src="images/gallery/thumbnails/0605.jpg" border="0"> </a> <br >
									2 Geisha Heads &amp; Fish </td>
								<td class="centre-align"><a href="http://static.flickr.com/42/118080055_9691652ff3_o.jpg"> <img src="images/gallery/thumbnails/0505.jpg" border="0"> </a> <br >
									2 Figures &amp; Bird </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="http://static.flickr.com/44/118080007_7d3ba64ceb_o.jpg"> <img src="images/gallery/thumbnails/1605.jpg" border="0"> </a> <br >
									3 seahorses </td>
								<td class="centre-align"><a href="http://static.flickr.com/47/118080028_571862a043_o.jpg"><img src="images/gallery/thumbnails/1005.jpg" border="0"></a> <br >
									Geisha Head, Earrings Head </td>
								<td class="centre-align"><a href="http://static.flickr.com/39/118079999_6c1cea69d3_o.jpg"> <img src="images/gallery/thumbnails/1905.jpg" border="0"> </a> <br >
									Spotty seahorse, fish & bird </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="http://static.flickr.com/46/118079971_3fb11aab44_o.jpg"> <img src="images/gallery/thumbnails/2105.jpg" border="0"> </a> <br >
									4 Figures </td>
								<td class="centre-align"><a href="http://static.flickr.com/36/118079984_a56d6b8d53_o.jpg"> <img src="images/gallery/thumbnails/1405.jpg" border="0"> </a> <br >
									6 Seahorses </td>
								<td class="centre-align"><a href="http://static.flickr.com/39/118079956_ab45a8b0b7_o.jpg"> <img src="images/gallery/thumbnails/2005.jpg" border="0"> </a> <br >
									Sea Serpent </td>
							</tr>
							<tr>
								<td class="centre-align"><a href="http://static.flickr.com/40/118079917_bcb7e5405a_o.jpg"><img src="images/gallery/thumbnails/geishafigure(30cm).jpg" width="200" height="285" border="0"></a><br>
									Geisha Figure (30cm)</td>
								<td class="centre-align"><a href="http://static.flickr.com/37/118079901_4b14d17c08_o.jpg"><img src="images/gallery/thumbnails/LadyinGreen(35cm).jpg" width="200" height="285" border="0"></a><br>
									Lady in Green (35cm)</td>
								<td class="centre-align"><a href="http://static.flickr.com/52/118079892_2a952b48da_o.jpg"><img src="images/gallery/thumbnails/2seahorses(33cm28cm).jpg" width="200" height="285" border="0"></a><br>
									Two Seahorses (33cm, 28cm)</td>
							</tr>
						</table>
	</stripes:layout-component>
</stripes:layout-render>