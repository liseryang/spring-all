<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试页面</title>
</head>
<body>
	<b>欢迎进入管理</b>
	<br>
	<fieldset>

		<a title="通过jpa添加到mysql" href="<c:url value='/school/school2'/>">jpa
			mysql 管理</a> <br> <br> 
		<a title="通过mongodb添加"
			href="<c:url value='/landscape'/>">mongodb 管理</a>
			<br> <br> 
		<a href="<c:url value='/ui/siteMesh'/>">siteMesh什么的</a>
	</fieldset>

</body>
</html>