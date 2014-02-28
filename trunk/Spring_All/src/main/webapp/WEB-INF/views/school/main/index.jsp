<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<html>
	<head>
		<title>学校 &raquo; <sitemesh:title /></title>
		<%@ include file="/template/cssSet.jsp" %>
	</head>
	<body>
			<%@ include file="/template/topnav.jsp" %>
			<%@ include file="left.jsp" %>
			<sitemesh:body />
			<%@ include file="/template/jsSet.jsp" %>
	</body>
</html>