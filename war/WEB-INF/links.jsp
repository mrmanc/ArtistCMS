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
						<h1>Links</h1>
						<span class="links">
							<table cellspacing="0" cellpadding="0" border="0">
								<tr>
									<td width="49%">
										<h2>Other Potters</h2>
										<p>Paul Smith &mdash; a sculptor from Whaley Bridge<br>
											<a href="http://www.paulsmithsculptures.co.uk/">http://www.paulsmithsculptures.co.uk/</a></p>
										<p>Lisa Ellul<br>
											<a href="http://www.ellulceramics.com">http://www.ellulceramics.com/</a></p>
										<h2>Events</h2>
										<p>Art in Clay<br>
                        <a href="http://www.artinclay.co.uk/">http://www.artinclay.co.uk/</a></p>
										<p>Potfest in the Peak / in the Park<br>
										  Bakewell &amp; Hutton in the Forest, Cumbria<br>
                        <a href="http://www.potfest.co.uk/">http://www.potfest.co.uk/</a></p>
										<p>Clayart<br>
                        <a href="http://www.clayart.org.uk/">http://www.clayart.org.uk/</a></p>
										<p>Keramisto (Holland)<br>
                        <a href="http://www.keramisto.com/">http://www.keramisto.com/</a></p>
										<h2>Publications</h2>
										<p>The Craftsman Magazine<br>
											<a href="http://www.craftsman-magazine.com/">http://www.craftsman-magazine.com/</a></p>
<p>Craft and Design<br>
											<a href="http://www.craftanddesign.net/">http://www.craftanddesign.net/</a></p>
									</td>
									<td width="49%">
										<h2>Profile Sites</h2>
										<p>Cheshire Artists Network <br>
											<a href="http://www.c-a-n.co.uk/">http://www.c-a-n.co.uk/<br>
											</a><a href="http://www.chester.gov.uk/tourism_and_leisure/arts_and_entertainment/virtual_art_gallery.aspx">Chester Council &#151; Virtual Art Gallery </a></p>
										<p>Design Initiative &#151; Online Portfolio<br>
											<a href="http://www.designinit.org.uk/">http://www.designinit.co.uk/</a></p>
										<p>Studio Pottery &mdash; a good site for keeping in touch with events and potters<br>
											<a href="http://www.studiopottery.co.uk/">http://www.studiopottery.co.uk/</a></p>
										<p>The Craftsman Gallery of selected makers <br>
											<a href="http://www.craftmaker.co.uk">http://www.craftmaker.co.uk/</a></p>
									  <h2>Galleries</h2>
									  <p>The Wonderwall Gallery, Cirencester <br>
                        <a href="http://www.thewonderwallgallery.com/">http://www.thewonderwallgallery.com/</a></p>
									  <p>Aberystwyth Arts Centre Shop <br>
                        <a href="http://www.aberystwythartscentre.co.uk/information/shop/">http://www.aberystwythartscentre.co.uk/information/shop/</a></p>
									  <p>BisQ Ceramics, Delft, Holland <br>
                        <a href="http://www.bisqceramics.nl/">http://www.bisqceramics.nl/</a></p>
									  <p>Ropewalk Gallery, Barton on Humber <br>
                        <a href="mailto:info@the-ropewalk.co.uk">info@the-ropewalk.co.uk</a></p>
									  <p>Serena Hall Gallery, Southwold 20/21 <br>
                        <a href="http://www.serenahall.fsnet.co.uk/">http://www.serenahall.fsnet.co.uk/</a></p>
									  <p>20 &mdash; 21 Visual Arts Centre, Scunthorpe <br>
                        <a href="www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/">www.northlincs.gov.uk/NorthLincs/Leisure/arts/20-21VisualArtsCentre/</a></p></td>
								</tr>
							</table>
						</span>
	</stripes:layout-component>
</stripes:layout-render>