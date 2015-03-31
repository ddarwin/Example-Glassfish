<%--
 Copyright 2004-2005 Sun Microsystems, Inc.  All rights reserved.
 Use is subject to license terms.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head><title>Hello</title></head>
<body bgcolor="white">
<img src="images/duke.waving.gif"> 

<fmt:requestEncoding value="UTF-8"/>

<fmt:setBundle basename="LocalStrings" var="resourceBundle" scope="page"/>

<h2><fmt:message key="greeting_message" bundle="${resourceBundle}"/></h2>
<form method="get" id="myForm">
<input type="text" name="username" size="25">
<p></p>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
<script type="text/javascript">
    document.getElementById('myForm').addEventListener('submit', function (e) {
        var username = e.target.elements['username'].value;
        newrelic.addPageAction('userSent', {username: username});
    })
</script>
</form>

<c:if test="${not empty param['username']}">
    <%@include file="response.jsp" %>
</c:if>

</body>
</html>
