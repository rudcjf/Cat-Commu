<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="layout.header" />
<link rel="stylesheet" href="/YourCat/resources/css<tiles:getAsString name="layout.css" />.css">
<title><tiles:getAsString name="layout.title" /></title>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<!-- Navbar Start-->
	<nav class="navbar navbar-default navbar-fixed-top"> <tiles:insertAttribute
		name="layout.top" /> </nav>
	<tiles:insertAttribute name="layout.body" />
	<tiles:insertAttribute name="layout.footer" />

</body>

</html>