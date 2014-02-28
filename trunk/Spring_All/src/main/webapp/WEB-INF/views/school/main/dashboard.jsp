<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>配置中心</title>
</head>
<body>
	<div id="main-content">
		<div class="container-fluid">
			<ul class="breadcrumb">
				<li><a href="/itsm">首页</a><span class="divider">&raquo;</span></li>
				<li class="active">配置中心</li>
			</ul>
			<div class="row-fluid">
				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>启动计划</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/project/create">创建启动计划</a>
									</h5>
									<p>创建项目，并且为项目添加任务。</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/project">查看启动计划</a>
									</h5>
									<p>查看项目及任务的列表。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>团队配置</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/queue/create">创建团队</a>
									</h5>
									<p>创建团队，并配置工作组。</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/queue">查看团队配置</a>
									</h5>
									<p>查看团队及团队配置。</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>服务窗口</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/calendar/create">添加服务</a>
									</h5>
									<p>点击添加服务</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/calendar">查看服务</a>
									</h5>
									<p>点击查看服务</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row-fluid">

				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>服务目录及服务级别管理</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/service">添加服务目录</a>
									</h5>
									<p>点击添加服务目录</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="/itsm/config/service_level/create">添加服务级别</a>
									</h5>
									<p>点击添加服务级别</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>流程管理</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="#">创建流程</a>
									</h5>
									<p>点击创建流程</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="#">查看流程</a>
									</h5>
									<p>点击查看流程</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>配置管理</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="${ctx}/itsm/config/ciCategoryManage/execute">类别管理</a>
									</h5>
									<p>点击创建配置项</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="${ctx}/itsm/config/ciManage/execute">CI项管理</a>
									</h5>
									<p>点击查看配置项</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row-fluid">
				<div class="span4">
					<div class="widget-block">
						<div class="widget-head">
							<h5>邮件及预警设置</h5>
						</div>
						<div class="widget-content">
							<div class="widget-box">
								<div class="well white-box">
									<h5>
										<a href="#">邮件工单设置</a>
									</h5>
									<p>点击进入工单设置</p>
								</div>
								<div class="well white-box">
									<h5>
										<a href="#">预警设置</a>
									</h5>
									<p>点击进入预警设置</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>