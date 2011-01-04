<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   isELIgnored="false"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<stripes:layout-definition>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
	<head><title>My First Stripe</title></head>
	<body>
		<p>Hello, ${actionBean.context.user}</p>
		<ul>
    		<li><stripes:link beanclass="uk.co.suecrossfield.stripes.WelcomeActionBean">Home Page</stripes:link></li>
    		<li><stripes:link beanclass="uk.co.suecrossfield.stripes.EditEventsActionBean">Edit Events</stripes:link></li>
     	</ul>
   		<stripes:layout-component name="content" />
   	</body>
</html>
</stripes:layout-definition>