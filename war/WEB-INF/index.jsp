<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<stripes:layout-render name="/WEB-INF/layout.jsp">
	<stripes:layout-component name="contents">
	
						<h1>About</h1>
						<img src="images/lovers.png" style="float: right; margin: 0 0 10px 10px;" />
						<p class="caption">My work reflects a fascination with natural and marine
						  forms, 
					  and female figures and heads.  I combine flowing lines and
					  sweeping curves in the slab construction of my barium glazed pieces. </p>
						<p>Inspiration for my marine pieces started in my early childhood. I was born on the south coast of England and my formative years were often spent on the beach splashing in the sea, collecting shells and dipping into rock pools. I&rsquo;m still a compulsive beachcomber and hoard collections of pebbles, shells and other natural forms such as seed heads and fossils. These have inspired sculptural pieces, often to grow plants in or over, or to use as water features. My seahorses, sea serpents and fish in rich tones of blue evoke the underwater world. Delicate sea urchin forms complement these shapes in pale shades of white, mauve and turquoise.</p>						
						<p>The elegant female figures and heads were originally inspired by the geishas in Japanese prints, and the heads and figures of Modigliani, Picasso and Gustav Klimt. These have evolved into more contemporary figures and heads with a hint of attitude. Occasionally I develop an idea from studies of historical costumes, to explore shape, texture and decorative detail. </p>
						<h2 style="clear: left;">Method</h2>
						<p> I work from thin slabs of white or buff stoneware clay bodies, which are sometimes impressed with texture from manmade or natural objects, before cutting, forming and assembling into the finished piece. My methods of cutting and assembling clay are similar to dressmaking and the use of wax resist and surface pattern are related to textile design<strong>. </strong> Decoration is also added at the completed stage either as applied textured detail or as surface pattern with slips, oxides, resists and glazes. Sometimes beaded jewellery, hatpins and hair adornments are added after the glaze firing. </p>						<p align="left">The scale of my work varies from robust garden sculptures and planters in warm rustic colours and natural surfaces, to finer, smaller pieces for interior setting, often in a range of whites, purples, blues and turquoises. </p>
						<p align="left">My work is fired in an electric kiln to between 1220&ordm;C and 1280&ordm;C. The high-fired pieces are ideal for being displayed outdoors as well as inside.</p>
						<h2>Events</h2>
						<p>These are my upcoming events. Please see the <a href="cv.html">CV page</a> for details of events past.</p>
						<table width="100%" border="0" class="events">
					    	<c:forEach var="event" items="${actionBean.currentEvents}">
					    		<tr>
					   				<td style="width: 15%;">${event.date}</td>
					    			<td style="width: 50%;"><a href="${event.link}" target="_blank">${event.description}</a></td>
					    			<td style="width: 35%;">${event.location}</td>
					    		</tr>
					    	</c:forEach> 
				    	</table>
						
						<table width="100%" border="0" class="events">
							<tr>
								<td>July 24, 25, 26</td>
								<td><a href="http://www.potfest.co.uk/" target="_blank">Potfest in the Park</a></td>
								<td>Hutton in the Forest, Penrith</td>
							</tr>
							<tr>
								<td>July 22 &ndash; 26</td>
								<td><a href="http://www.rhs.org.uk/" target="_blank">Cheshire Artists Network Exhibition at RHS</a></td>
								<td>Tatton Park, Cheshire</td>
							</tr>
							<tr>
								<td>Sept 2 &ndash; 30</td>
								<td><a href="http://www.mountpleasantgardens.co.uk/" target="_blank">Mount Pleasant gardens Sculpture Exhibition</a></td>
								<td>Kelsall, Cheshire</td>
							</tr>
							<tr>
								<td>Sept 12, 13</td>
								<td><a href="http://www.wirksworthfestival.co.uk/" target="_blank">Wirksworth Art Trail</a></td>
								<td>Wirksworth Derbyshire</td>
							</tr>
							<tr>
								<td>Sept 26, 27</td>
								<td><a href="http://www.cheshireopenstudios.org.uk" target="_blank">Cheshire Open Studios</a></td>
								<td>Vale Head, Handforth, Cheshire</td>
							</tr>
						</table>
						<h2>Contact Me</h2>
						<p>Please contact me either by email on <a href="mailto:sue@suecrossfield.co.uk" title="Click here to email">sue@suecrossfield.co.uk</a> <a href="mailto:sue@suecrossfield.co.uk" title="Click here to email" style="text-decoration: none;"><img src="images/email.gif" alt="email icon" style="position: relative; top: .4em;" /></a> or by phone on 01625 532 530. I am based in Handforth, near Wilmslow in Cheshire.
						<!-- page ends -->
	</stripes:layout-component>
</stripes:layout-render>