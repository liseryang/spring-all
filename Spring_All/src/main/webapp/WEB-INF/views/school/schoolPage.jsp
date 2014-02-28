<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学校</title>
</head>
<body>
	${ TestAttribute }
	<br>
	<%-- 	<a href="<c:url value='/school/school2/school'/>">首页</a> --%>
	<br>
	<%-- 	<a href="<c:url value='/school/school2/studentList'/>">学生列表</a> --%>
	<br>
	<a title="通过jpa添加到mysql"
		href="<c:url value='/school/school2/addAStudent'/>">添加学生</a>
	<br>
	<a title="通过jpa添加到mysql"
		href="<c:url value='/school/school2/addManyStudent'/>">添加多个学生</a>
	<br>
	<a title="查找学生（通过接口方法）"
		href="<c:url value='/school/school2//findStudentByName'/>">查找学生</a>
	<br>
	<br>
</body>
</html>