<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<html>
<head>
<title><sitemesh:title /></title>
<%@ include file="/WEB-INF/views/decorators/header.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/decorators/topnav.jsp"%>
	<%@ include file="left.jsp"%>
	<sitemesh:body />
	<%@ include file="/WEB-INF/views/decorators/footer.jsp"%>
</body>
</html>