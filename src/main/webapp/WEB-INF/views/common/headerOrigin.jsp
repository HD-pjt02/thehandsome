<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/event.css"
	type="text/css" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.set_width {
	width: 1205px;
	margin: 0px auto;
}
.header_item {
	padding: 0px 20px 0px 0px;
	color: #363636;
	font-size: 11px;
	height: 30px;
	display: table-cell;
	vertical-align: middle;
}
.nav_item {
	color: #363636;
	font-size: 13px;
	display: table-cell;
	vertical-align: middle;
	font-weight: bolder;
	padding: 16px;
}
.footer_item {
	width: 150px;
	font-size: 11px;
	padding: 5px 40px 5px 0px;
}
.footer_text {
	font-size: 10px;
	color: #555555;
}
.footer_text_space {
	margin: 0px 8px;
	color: rgba(0, 0, 0, 0.4);
}
.nav ul, .nav li {
	margin: 0;
	padding: 0;
	border: none;
	outline: none;
}
.nav a {
	text-decoration: none;
	color: black;
	font-size: 14px;
}
.nav li {
	list-style: none;
}
.nav {
	display: inline-block;
	position: relative;
	cursor: default;
}
/* Menu List */
.nav>li {
	display: block;
	float: left;
}
.nav>li>a {
	position: relative;
	display: block;
	padding: 0 50px;
	line-height: 54px;
	font-size: 13px;
	color: black;
	background: white;
}
/* Menu Dropdown */
.nav>li>div {
	position: absolute;
	display: block;
	width: 120%;
	height: 400px;
	top: 50px;
	left: 0;
	background-color: rgba(255, 255, 255, 0.5);
	visibility: hidden;
	overflow: hidden;
	background: #ffffff;
	border-radius: 0 0 3px 3px;
}
.nav>li:hover>div {
	opacity: 1;
	visibility: visible;
	overflow: visible;
}
/* Menu Content Styles */
.nav .nav-column {
	float: left;
	height: 180px;
	width: 32%;
	padding-left: 2.5%;
}
.nav .nav-column li a {
	display: block;
	line-height: 26px;
	font-size: 13px;
	color: #888888;
}
.nav .nav-column li a:hover {
	color: #666666;
}
</style>

<body>
	<header
		style="position: fixed; width: 100%; background-color: white; z-index: 1;">
		<div class="set_width">
			<a href="${pageContext.request.contextPath}/home" class="header_item">HOME</a>
			
			<div class="header_item">LANGUAGE</div>
		</div>
		<div style="width: 100%; border-bottom: 1px solid rgba(0, 0, 0, 0.1)"></div>
		<div class="set_width">
			<div
				style="font-weight: bolder; color: #444444; font-size: 20px; width: 260px; height: 60px; display: table-cell; vertical-align: middle; cursor: pointer;"
				onclick="location.href='${pageContext.request.contextPath}/home'">|
				THE | HANDSOME |</div>
			<div id="menu-wrapper"
				style="width: 860px; height: 60px; display: table-cell; vertical-align: middle">
				<ul class="nav">
					
					
				</ul>
			</div>
		</div>
	</header>
	<div style="padding-top: 120px;">