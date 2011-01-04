<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<stripes:layout-render name="/WEB-INF/admin/adminLayout.jsp">
	<stripes:layout-component name="content">
		<stripes:form beanclass="${actionBean.class}">
    		<stripes:label for="event.description">Description</stripes:label> <stripes:text name="event.description"></stripes:text>
    		<stripes:label for="event.location">Location</stripes:label> <stripes:text name="event.location"></stripes:text>
    		<stripes:label for="event.startDate">Start Date</stripes:label> <stripes:text name="event.startDate"></stripes:text>
    		<stripes:label for="event.endDate">End Date</stripes:label> <stripes:text name="event.endDate"></stripes:text>
    		<stripes:label for="event.link">Link</stripes:label> <stripes:text name="event.link"></stripes:text>
    		<stripes:hidden name="event.id" />
    		<stripes:submit name="saveEvent" value="Save"></stripes:submit>
    	</stripes:form>
    	
    	<table border="1">
    		<tr>
    			<th>Start Date</th>
    			<th>End Date</th>
    			<th>Display Date</th>
    			<th>Description</th>
    			<th>Link</th>
    			<th>Location</th>
    			<th></th>
    			<th></th>
    		</tr>
	    	<c:forEach var="event" items="${actionBean.allEvents}">
	    		<tr>
	   				<td>${event.startDate}</td>
	   				<td>${event.endDate}</td>
	   				<td>${event.date}</td>
	    			<td>${event.description}</td>
	    			<td>${event.link}</td>
	    			<td>${event.location}</td>
	    			<td><stripes:link beanclass="${actionBean.class}"><stripes:param name="editEvent"></stripes:param><stripes:param name="event.id">${event.id}</stripes:param>Edit</stripes:link> </td>
	    			<td><stripes:link beanclass="${actionBean.class}"><stripes:param name="deleteEvent"></stripes:param><stripes:param name="event.id">${event.id}</stripes:param>Delete</stripes:link> </td>
	    		</tr>
	    	</c:forEach> 
    	</table>

	</stripes:layout-component>
</stripes:layout-render>