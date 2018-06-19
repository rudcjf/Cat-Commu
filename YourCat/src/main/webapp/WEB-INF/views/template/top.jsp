<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- Navbar Start-->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<c:url value='/'/>">Show Me Your Cats</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value='/'/>">HOME</a></li>
        <li><a href="<c:url value='/board/BoardList'/>">BOARD</a></li>
        <li><a href="<c:url value='/shoplist'/>">SHOP</a></li>
        <li><a href="<c:url value='/#contact'/>">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MEMBER
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <% String host = request.getContextPath(); %>
		  <%
			 String userID = (String)session.getAttribute("userID");
			 if(userID == null){
		  %>
			<li><a href="<c:url value='/login'/>">Log in</a></li>
		  <% }else{ %>
			<li><a href="#"><%=userID%>님 접속</a></li>
			<li><a href="<%=host%>/member/LoginDelete.jsp" class="btn-success">Logout</a></li>
		<%} %>
			
            <li><a href="<c:url value='/member/SignUp'/>">Sign Up</a></li>
            <li><a href="<c:url value='/myinfo'/>">My Info</a></li> 
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
 <!-- Navbar End -->