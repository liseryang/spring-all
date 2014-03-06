<%@page import="javax.swing.text.TabableView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典</title>
</head>
<body>
	<br>
	<a title="添加到mongodb"
		href="<c:url value='/dictionary/addDictionaryItem'/>">添加一个字典项</a>
	<br>
	<a title="查找mongodb"
		href="<c:url value='/landscape/findDictionaryItem'/>">查找一个字典项</a>
	<br>
	<a title="查找mongodb"
		href="<c:url value='/landscape/findManyDictionaryItem'/>">查找多个字典项</a>
	<br>
	<a title="更新mongodb"
		href="<c:url value='/landscape/updateDictionaryItem'/>">更新一个字典项</a>
	<br>
	<a title="删除mongodb"
		href="<c:url value='/landscape/deleteDictionaryItem'/>">删除一个字典项</a>
	<br>
	<a title="删除mongodb"
		href="<c:url value='/landscape/deleteAllDictionaryItem'/>">删除所有字典项</a>
	<br>
</body>
</html>