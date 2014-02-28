<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="datatables" uri="http://github.com/dandelion/datatables"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
</head>
<body>
	<div id="main-content">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="nonboxy-widget">
					<div class="widget-head">
							<button onclick="testjs()">测试javascript</button>
						</div>
						<c:url var="datasource" value="/Spring_All/school/studentList2.do" />
						<datatables:table id="datatable" url="${ datasource }"
							serverSide="true" processing="true" paginationType="full_numbers"
							cssClass="data-tbl-striped table table-bordered dataTable">

							<!-- 前面的复选框 -->
							<datatables:column cssClass="center" sortable="false"
								searchable="false" id="th-checkallcell" aria-index="0" />

							<datatables:column title="编号 " property="id" searchable="true"
								cssClass="center" />

							<datatables:column title="姓名" property="name" searchable="true"
								cssClass="center" />

							<datatables:column title="年龄" cssClass="center" searchable="true"
								property="age" />

							<datatables:column title="性别" cssClass="center" searchable="true"
								property="sex" />

							<datatables:column title="学号" cssClass="center" searchable="true"
								property="stuNo" />

							<datatables:column title="操作" cssClass="center" sortable="false"
								searchable="false" id="td-operates" aria-index="4" />

							<%-- 		<datatables:callback type="createdrow" function="config_center.callbackCreateServiceLevelRow" /> --%>
						</datatables:table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>