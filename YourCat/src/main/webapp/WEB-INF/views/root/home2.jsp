<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<P>  The time on the server is ${serverTime}. </P>

<hr>
<c:set var="salary" value="${5000*2}"/>
<c:if test="${salary > 8000 }">
	<p>My salary is : ${salary}
</c:if>

<hr>
<c:choose>
<c:when test="${salary <= 0 }"> Very low to survive</c:when>
<c:when test="${salary > 9000 }"> Very Good</c:when>
<c:otherwise>No comment sir</c:otherwise>
</c:choose>

<hr>
<c:forEach var="i" begin = "1" end="5">
Item : <c:out value="${i}"/><p>
</c:forEach>

<hr>
<a href = "<c:url value="/"/>">Test</a>
<%--  <c:redirect url="http://yojulab.com"></c:redirect>--%>

</body>
</html>
