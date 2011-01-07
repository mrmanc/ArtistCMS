<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<stripes:layout-render name="/WEB-INF/layout.jsp">
	<stripes:layout-component name="contents">
		<h1>Curriculum Vitae </h1>
		<p>Please see the <a href="index.html">About page</a> for details of upcoming events.</p>
		<table width="100%" border="0" class="cv">
			<tr>
				<th colspan="3"><h2>QUALIFICATIONS</h2></th>
			</tr>
			<tr>
				<td>1967</td>
				<td>B.A. Honours &mdash; 3D Design (Ceramics)</td>
				<td>Manchester College of Art and Design</td>
			</tr>
			<tr>
				<td>1968</td>
				<td>Art Teachers Certificate</td>
				<td>Birmingham University</td>
			</tr>
			<tr>
				<th colspan="3"><h2>EMPLOYMENT</h2></th>
			</tr>
			<tr>
				<td>1968 &ndash; 2003 </td>
				<td colspan="2">Various full and part-time teaching posts in Art and Design, in secondary and Adult Education</td>
			</tr>
			<tr>
				<td>1998 &#150;</td>
				<td colspan="2">Full-time Ceramic Artist</td>
			</tr>
			<tr>
				<th colspan="3"><h2>RECENT EXHIBITIONS AND EVENTS</h2></th>
			</tr>

			<c:forEach var="event" items="${actionBean.pastEvents}">
				<tr>
	   				<td>${event.shortDate}</td>
	    			<td>${event.description}</td>
	    			<td>${event.location}</td>
	    		</tr>
	    	</c:forEach>

							<tr>
							  <td>Sept 2010</td>
							  <td><a href="http://www.artistsatwork.org.uk/" target="_blank">Cheshire Open Studios</a></td>
							  <td>16 Vale Head, Handforth, Wilmslow, Cheshire, SK9 3BP</td>
							</tr>
							<tr>
							  <td>Sept 2010</td>
							  <td><a href="http://www.wirksworthfestival.co.uk" target="_blank">Wirksworth Festival</a></td>
							  <td>Wirksworth, Derbyshire</td>
							</tr>
							<tr>
								<td>Oct 2010</td>
								<td><a href="http://www.theartofcaring.org.uk/" target="_blank">East Cheshire Hospice Art Fair</a></td>
								<td>Town Hall, Macclesfield</td>
							</tr>


							<tr>
								<td>July 2010</td>
								<td><a href="http://www.potfest.co.uk/" target="_blank">Potfest in the Park</a></td>
								<td>Hutton in the Forest, Penrith</td>
							</tr>
						<tr>
						  <td>May 2010</td>
						  <td><a href="http://www.loacaart.co.uk/" target="_blank">Contemporary Craft &amp; Art Event</a></td>
						  <td>Bluecoat Arts Centre, Liverpool</td>
						</tr>
						<tr>
						  <td>May 2010</td>
						  <td><a href="http://www.keramiekmarkt-swalmen.nl/" target="_blank">International Ceramic Market</a></td>
						  <td>Swalmen, Holland</td>
						</tr>
						<tr>
						  <td>May 2010</td>
						  <td><a href="http://goudsekeramiekdagen.nl/" target="_blank">Keramiek Dagen</a></td>
						  <td>Gouda, Holland</td>
						</tr>
						<tr>
						  <td>Apr &ndash; May 2010</td>
						  <td><a href="http://www.maynard.co.uk/upcoming_events/2010/01/a-celebration-of-art/" target="_blank">A Celebration of Art</a></td>
						  <td>Maynard School, Exeter</td>
						</tr>
						<tr>
						  <td>April 2010</td>
						  <td><a href="http://www.calidadevents.co.uk/larklanedates.html" target="_blank">Lark Lane Police Station</a></td>
						  <td>Liverpool, L17 8UU</td>
						</tr>
						<tr>
						  <td>Apr &ndash; June 2010</td>
						  <td><a href="http://www.showborough.com/" target="_blank">Garden Art Exhibition</a></td>
						  <td>Showborough House, Gloucs</td>
						</tr>
						<tr>
						  <td>March 2010</td>
						  <td><a href="http://www.loacaart.co.uk/" target="_blank">Contemporary Craft &amp; Art Event</a></td>
						  <td>Bluecoat Arts Centre, Liverpool</td>
						</tr>
						<tr>
						  <td>February 2010</td>
						  <td><a href="http://www.calidadevents.co.uk/heritagemarket.html" target="_blank">Heritage Market</a></td>
						  <td>Liverpool, L3 0AN</td>
						</tr>


						

						
						<tr>
						  <td>Sept 2009</td>
						  <td>Mount Pleasant gardens Sculpture Exhibition</td>
						  <td>Kelsall, Cheshire</td>
						</tr>
						<tr>
						  <td>Sept 2009</td>
						  <td>Wirksworth Art Trail</td>
						  <td>Wirksworth Derbyshire</td>
						</tr>
						<tr>
						  <td>Sept 2009</td>
						  <td>Cheshire Open Studios</td>
						  <td>Vale Head, Handforth, Cheshire</td>
						</tr>
						
						<tr>
						  <td> July 2009</td>
						  <td>Cheshire Artists
						  Network Exhibition at RHS show</td>
						  <td> Tatton Park, Cheshire </td>
						</tr>

			<tr>
			  <td> July 2009</td>
			  <td>Potfest in the Park</td>
			  <td> Hutton in the Forest, Penrith </td>
			</tr>
			<tr>
			  <td>May 2009 </td>
			  <td>Hot Pots</td>
			  <td>Belvoir Castle, Leics </td>
			</tr>
			<tr>
			  <td>May 2009 </td>
			  <td>Goudse Keramiek Dagen</td>
			  <td>Gouda, Holland </td>
			</tr>
			<tr>
			  <td>April 2009 </td>
			  <td>Ceramics in the Round</td>
			  <td>The Great Dome, Buxton</td>
			</tr>
			<tr>
			  <td>April 2009  </td>
			  <td>Showborough House Affordable Garden Art</td>
			  <td>Showborough House, Twyning, Gloucs </td>
			</tr>
			<tr>
			  <td>March 2009 </td>
			  <td>Art in Gardens</td>
			  <td>Ness Gardens, Cheshire </td>
			</tr>
			<tr>
			  <td>Nov 2008</td
			  <td>Art in Clay</td>
			  <td>Farnham, Surrey</td>
			</tr>
			<tr>
			  <td>July 2008</td>
			  <td>Potfest in the
			  Park</td>
			  <td>Hutton in the
			  Forest, Cumbria</td>
			</tr>
			<tr>
			  <td>June 2008</td>
			  <td>Exhibition
			  &mdash; The Sea
			  </td>
			  <td>Keramiekcentrum,
			  Tiendschuur, NL</td>
			</tr>
			<tr>
			  <td>May 2008</td>
			  <td>ClayArt Wales
			  2008</td>
			  <td>Llanrhaeadr
			  Hall, Denbigh,
			  N. Wales</td>
			</tr>
			<tr>
			  <td>Apr 2008</td>
			  <td>Ceramics in the
			  Round</td>
			  <td>The Dome,
			  Buxton</td>
			</tr>
			    

			
			<tr>
				<td>Nov 2007</td>
				<td>Handmade</td>
				<td>20 &ndash; 21 Visual Arts Centre, Scunthorpe</td>
			</tr>
			<tr>
				<td>Sept 2007</td>
				<td>Two Ladies</td>
				<td>The Ropewalk, Barton on Humber</td>
			</tr>
			<tr>
				<td>Sept 2007</td>
				<td>Keramisto</td>
				<td>Milsbeek, Holland</td>
			</tr>
			<tr>
				<td>Sept 2007</td>
				<td>De Stegge</td>
				<td>Winterswijk, Holland</td>
			</tr>
			<tr>
				<td>Aug 2007</td>
				<td>Art in Clay</td>
				<td>Hatfield House, Hertfordshire.</td>
			</tr>
			<tr>
				<td>July 2007</td>
				<td>Sea and Shore</td>
				<td>20 &ndash; 21 Visual Arts Centre, Scunthorpe</td>
			</tr>
			<tr>
				<td>July 2007</td>
				<td>Potfest in the Park</td>
				<td>Hutton in the Forest, Cumbria</td>
			</tr>
			<tr>
				<td>Sept 2006</td>
				<td>East Cheshire Hospice Art Exhibition</td>
				<td>Macclesfield Town Hall</td>
			</tr>
			<tr>
				<td>Sept 2006</td>
				<td>Ceramics in the City</td>
				<td>Geffrye Museum, London</td>
			</tr>
			<tr>
				<td>Aug 2006</td>
				<td>Art in Clay</td>
				<td>Hatfield House, Hertfordshire.</td>
			</tr>
			<tr>
				<td>July 2006</td>
				<td>Potfest in the Park</td>
				<td>Hutton in the Forest, Cumbria</td>
			</tr>
			<tr>
				<td>June 2006</td>
				<td>Ceramics South East</td>
				<td>Maidstone, Kent</td>
			</tr>
			<tr>
				<td>June 2006</td>
				<td>Potfest in the Peak</td>
				<td>Bakewell, Derbyshire</td>
			</tr>
			<tr>
				<td>May 2006</td>
				<td>ClayArt</td>
				<td>Denbigh, North Wales</td>
			</tr>
			<tr>
				<td>Feb &ndash; Apr 2006</td>
				<td>Project leader working with Carers</td>
				<td>Manchester Art Gallery</td>
			</tr>
			<tr>
				<td>Nov 2005</td>
				<td>Make It Contemporary Fair</td>
				<td>Moorlands House, Leek, Staffordshire</td>
			</tr>
			<tr>
				<td>Sept 2005</td>
				<td>Ceramique c&rsquo;est la F&ecirc;te</td>
				<td>Cordes sur Ciel, France</td>
			</tr>
			<tr>
				<td>Sept 2005</td>
				<td>Keramisto</td>
				<td>Milsbeek, Holland</td>
			</tr>
			<tr>
				<td>Aug 2005</td>
				<td>Shipston on Sea</td>
				<td>Where I Fell In Love Gallery, Shipston on Stour</td>
			</tr>
			<tr>
				<td>July 2005</td>
				<td>Cheshire Artists Network Exhibition</td>
				<td>Norton Priory, Cheshire</td>
			</tr>
			<tr>
				<td>July 2005</td>
				<td>Ceramics Fair, Wales</td>
				<td>Tredegar House, Newport</td>
			</tr>
			<tr>
				<td>June 2005</td>
				<td>Potfest in the Peak</td>
				<td>Bakewell, Derbyshire</td>
			</tr>
			<tr>
				<td>May 2005</td>
				<td>Artist &amp; Designer Fair</td>
				<td>Buxton, Derbyshire</td>
			</tr>
			<tr>
				<td>May 2005</td>
				<td>ClayArt</td>
				<td>Denbigh</td>
			</tr>
			<tr>
				<td>April &ndash; May 2005</td>
				<td>Potfest Bristol</td>
				<td>Bristol</td>
			</tr>
			<tr>
				<td>April 2005</td>
				<td>Spring Exhibition</td>
				<td>Wonderwall Gallery, Cirencester</td>
			</tr>
			<tr>
				<td>April 2005</td>
				<td>Ceramics &amp; Pottery Fair</td>
				<td>Waddeson Manor, Berkshire Marine Craft</td>
			</tr>
			<tr>
				<td>April 2005</td>
				<td>Marine Craft</td>
				<td>Ropewalk Gallery, Barton on Humber</td>
			</tr>
			<tr>
				<td>March 2005</td>
				<td>Artist &amp; Designer Fair</td>
				<td>Pavilion Gardens, Buxton</td>
			</tr>
			<tr>
				<td>Dec &ndash; Jan 2005</td>
				<td>Beautiful Things, Gorgeous Stuff</td>
				<td>Ashton-Under-Lyne Art Gallery</td>
			</tr>
			<tr>
				<td>Dec 2004</td>
				<td>Craft Caf&eacute;</td>
				<td>Northern Lawn Tennis Club, Didsbury,</td>
			</tr>
			<tr>
				<td>Dec 2004</td>
				<td>Cheshire Open Studios</td>
				<td>16 Vale Head</td>
			</tr>
			<tr>
				<td>Nov 2004</td>
				<td>Art in Clay</td>
				<td>The Maltings, Farnham</td>
			</tr>
			<tr>
				<td>Oct &ndash; Dec 2004</td>
				<td>Foyer Exhibition</td>
				<td>Gladstone Museum, Stoke on Trent</td>
			</tr>
			<tr>
				<td>Sept 2004</td>
				<td>East Cheshire Hospice Art Exhibition</td>
				<td>Macclesfield Town Hall</td>
			</tr>
			<tr>
				<td>Sept 2004</td>
				<td>Cheshire Open Studios</td>
				<td>16 Vale Head, Handforth, Wilmslow.</td>
			</tr>
			<tr>
				<td>July 2004</td>
				<td>Terralha Potters Festival</td>
				<td>St Quentin le Poterie, France</td>
			</tr>
			<tr>
				<td>July 2004</td>
				<td>The Sculpture Show</td>
				<td>Mottram Hall, Cheshire</td>
			</tr>
			<tr>
				<td>June 2004</td>
				<td>Sheffield Art Market</td>
				<td>Sheffield</td>
			</tr>
			<tr>
				<td>June &ndash; July 2004</td>
				<td>Beyond the Sea</td>
				<td>Ropewalk Contemporary Art, Barton-on-Humber</td>
			</tr>
			<tr>
				<td>May 2004</td>
				<td>Clay Art</td>
				<td>Denbigh, North Wales</td>
			</tr>
			<tr>
				<td>Apr &ndash; May 2004</td>
				<td>SeaSpirit</td>
				<td>Byard Art, Cambridge</td>
			</tr>
			<tr>
				<td>May &ndash; June 2004</td>
				<td>Rites of Spring</td>
				<td>Bluebell Arts Centre, Banford Hall, Hyde</td>
			</tr>
			<tr>
				<td>Nov 2003</td>
				<td>Christmas Arts Market</td>
				<td>Harley Gallery, Nottinghamshire</td>
			</tr>
			<tr>
				<td>Nov 2003</td>
				<td>Art In Clay</td>
				<td>Farnham</td>
			</tr>
			<tr>
				<td>Sept 2003</td>
				<td>Cheshire Open Studios</td>
				<td>16 Vale Head, Handforth</td>
			</tr>
			<tr>
				<td>July 2003</td>
				<td>Potfest in the Park</td>
				<td>Penrith</td>
			</tr>
			<tr>
				<td>June 2003</td>
				<td>Expression</td>
				<td>London W1, Showcase for N/W creative industries</td>
			</tr>
			<tr>
				<td>June 2003</td>
				<td>Ceramics in the City</td>
				<td>Geffrye Museum, London</td>
			</tr>
			<tr>
				<td>May 2003</td>
				<td>Form &amp; Fable</td>
				<td>The Old Bakehouse, Chichester</td>
			</tr>
			<tr>
				<td>May 2003</td>
				<td>Clay Art (including demonstration)</td>
				<td>Denbigh, North Wales</td>
			</tr>
			<tr>
				<td>May 2003</td>
				<td>Spring into Summer</td>
				<td>Steading Gallery, Kirkcudbright, Scotland</td>
			</tr>
			<tr>
				<td>April 2003</td>
				<td>British Craft Trade Fair</td>
				<td>Harrogate</td>
			</tr>
			<tr>
				<td>Feb 2003</td>
				<td>Workshop&mdash;Ceramic Animals</td>
				<td>Quarrybank Mill, Styal, Cheshire</td>
			</tr>
			<tr>
				<th colspan="3"><h2>CURRENT OUTLETS</h2>
			</td>
			
			</tr>
			
			<tr>
				<td colspan="2"> Aberystwyth Arts Centre Shop </td>
				<td>BisQ Ceramics, Delft, Holland</td>
			</tr>
			<tr>
				<td colspan="2">Ropewalk Gallery, Barton on Humber</td>
				<td>Serena Hall Gallery, Southwold</td>
			</tr>
			<tr>
				<td colspan="2">20/21 Visual Arts Centre, Scunthorpe</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<th colspan="3"><h2>PROFESSIONAL BODIES:</h2></th>
			</tr>
			<tr>
				<td colspan="3">Cheshire Artists Network</td>
			</tr>
			<tr>
				<td colspan="3">Cheshire Open Studios</td>
			</tr>
			<tr>
				<td colspan="3"><a href="www.designbank.org.uk" target="_blank">www.designbank.org.uk</a></td>
			</tr>
		</table>
	</stripes:layout-component>
</stripes:layout-render>