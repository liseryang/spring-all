<%@page import="javax.swing.text.TabableView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>景区</title>
</head>
<body>
	${ TestAttribute }
	<br>
	<a title="添加到mongodb"
		href="<c:url value='/landscape/addAscenic'/>">添加一个景点</a>
	<br>
	<a title="查找mongodb"
		href="<c:url value='/landscape/findAscenic'/>">查找一个景点</a>
	<br>
	<a title="查找mongodb"
		href="<c:url value='/landscape/findManyAscenic'/>">查找多个景点</a>
	<br>
	<a title="更新mongodb"
		href="<c:url value='/landscape/updateAscenic'/>">更新一个景点</a>
	<br>
	<a title="删除mongodb"
		href="<c:url value='/landscape/deleteAscenic'/>">删除一个景点</a>
	<br>
	<a title="删除mongodb"
		href="<c:url value='/landscape/deleteAllscenic'/>">删除所有景点</a>
	<br>
</body>
</html>