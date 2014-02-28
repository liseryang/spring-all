<%@ page contentType="text/html; charset=UTF-8"%>
<div class="navbar navbar-fixed-top">
	<div id="top-nav" class="navbar-inner">
		<div class="container-fluid">
			<div class="branding">
				<div class="logo">
					<a href="<c:url value="/itsm" />"><img
						src="<c:url value="/common/images/logo.png" />" width="168"
						height="40" alt="logo"></a>
				</div>
			</div>
			<ul class="nav pull-right">
				<li class="dropdown search-responsive"><a
					data-toggle="dropdown" class="dropdown-toggle" href="#"><em
						class="nav-icon magnifying_glass"></em><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="top-search">
							<form action="#" method="get">
								<div class="input-prepend">
									<span class="add-on"><i class="icon-search"></i></span> <input
										type="text" id="searchIcon">
								</div>
							</form>
						</li>
					</ul></li>
<!-- 				<li class="dropdown language-switch"><a data-toggle="dropdown" -->
<!-- 					class="dropdown-toggle" href="#"><em class="default-lang-icon"><img -->
<%-- 							src="${ ctx }/static/img/flag-icons/cn.png" width="16px" --%>
<!-- 							height="11px" alt="语言"></em><b class="caret" -->
<!-- 						style="margin-top: 5px"></b></a> -->
<!-- 					<ul class="dropdown-menu"> -->
<!-- 						<li><a href="#"><em class="lang-icons"><img -->
<%-- 									src="<c:url value="/static/img/flag-icons/us.png" />" --%>
<!-- 									width="16px" height="11px" alt="英语"></em> 英语 </a></li> -->
<!-- 						<li><a href="#"><em class="lang-icons"><img -->
<%-- 									src="<c:url value="/static/img/flag-icons/fr.png" />" --%>
<!-- 									width="16px" height="11px" alt="法语"></em> 法语 </a></li> -->
<!-- 					</ul></li> -->
				<c:if test="${ not empty teamGroup }">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">${ teamGroup.queueName }<em
							class="white-icons zip_files"></em><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<c:forEach items="${ teamGroups }" var="teamGroup">
								<li><a href="javascript:void(0)" class="switchGroup"
									id="group${ teamGroup.id }">${ teamGroup.queueName }</a></li>
							</c:forEach>
						</ul></li>
				</c:if>
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <c:if test="${count!=0 }">
							<span id="countSpan" class="alert-noty">${count}</span>
						</c:if><em class="white-icons admin_user"></em><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#" class="clickNotices"><i
								class="icon-envelope"></i> 通知提醒 <span class="alert-noty">${notificationCount!=null?notificationCount:0}</span></a></li>
						<li><a href="<c:url value="/itsm/support/incident" />"><i
								class="icon-list-alt"></i> 故障 <span class="alert-noty">${incidentCount!=null?incidentCount:0}</span></a></li>
						<li><a href="<c:url value="/itsm/support/incident" />"><i
								class="icon-list-alt"></i> 服务请求 <span class="alert-noty">${serviceRequestCount!=null?serviceRequestCount:0}</span></a></li>
						<li><a href="<c:url value="/itsm/support/incident" />"><i
								class="icon-list-alt"></i> 投诉 <span class="alert-noty">${accidentCount!=null?accidentCount:0}</span></a></li>
						<li><a href="<c:url value="/itsm/support/change" />"
							title="点击查看待处理的变更"><i class="icon-list-alt"></i> 变更 <span
								class="alert-noty">${ todoChangeCount!=null?todoChangeCount:0 }</span></a></li>
						<li><a href="<c:url value="/itsm/support/release" />"
							title="点击查看待处理的发布"><i class="icon-list-alt"></i> 发布 <span
								class="alert-noty">${ todoReleaseCount!=null?todoReleaseCount:0 }</span></a></li>
						<li><a href="<c:url value="/itsm/service/task" />"
							title="点击查看待处理的任务"><i class="icon-calendar"></i> 任务 <span
								class="alert-noty">${ todotaskCount!=null?todotaskCount:0 }</span></a></li>
						<li><a href="#"><i class="icon-briefcase"></i> 我的账户</a></li>
						<li><a href="#"><i class="icon-file"></i> 查看资料</a></li>
						<li><a href="#"><i class="icon-pencil"></i> 编辑资料</a></li>
						<li><a href="#"><i class="icon-cog"></i>帐户设置</a></li>
						<li><a href="#" class="edit_layout"><i
								class="icon-refresh"></i>编辑首页</a></li>
						<li class="divider"></li>
						<li><a href="${ctx}/itsm/logout"><i class="icon-off"></i><strong>注销</strong></a></li>
					</ul></li>
			</ul>
			<button data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar" type="button">
				<span class="icon-bar"></span><span class="icon-bar"></span><span
					class="icon-bar"></span>
			</button>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="dropdown"><a href="<c:url value="/itsm" />"
						class="dropdown-toggle"><em class="nav-icon home"></em> 首页 </a></li>
					<li class="dropdown"><a href="<c:url value="/itsm/support" />"
						class="dropdown-toggle"><em class="nav-icon users"></em> 用户支撑
					</a></li>
					<li class="dropdown"><a href="<c:url value="/itsm/service" />"
						class="dropdown-toggle"><em class="nav-icon cog"></em> 服务支撑</a></li>
					<li class="dropdown"><a href="<c:url value="/itsm/config" />"
						class="dropdown-toggle"><em class="nav-icon cog_4"></em> 配置中心</a>
					</li>

					<li class="dropdown"><a
						href="<c:url value="/itsm/knowledgebase" />"
						class="dropdown-toggle"><em class="nav-icon book"></em> 知识库</a></li>

					<li class="dropdown"><a href="<c:url value="/itsm/system" />"
						class="dropdown-toggle"><em class="nav-icon user"></em> 系统设置</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><em class="nav-icon cog_3"></em> 主题设置<b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="nav-header">色彩</li>
							<li class=" clearfix color-block"><span
								class="theme-color theme-blue" title="theme-blue"></span> <span
								class="theme-color theme-light-blue" title="theme-light-blue"></span>
								<span class="theme-color theme-dark" title="theme-dark"></span>
								<span class="theme-color theme-chrome" title="theme-chrome"></span>
								<span class="theme-color theme-chayam" title="theme-chayam"></span>
								<span class="theme-color theme-default" title="theme-default"></span>
							</li>
							<li class=" divider hidden-phone hidden-tablet"></li>
							<li class="nav-header hidden-phone hidden-tablet">菜单</li>
							<li class="theme-settings clearfix hidden-phone hidden-tablet">
								<div class="btn-group">
									<button id="sidebar-on" disabled="disabled"
										class="btn btn-success">On</button>
									<button id="sidebar-off" class="btn btn-inverse">Off</button>
								</div>
							</li>
							<li class=" divider"></li>
							<li class="nav-header hidden-phone hidden-tablet">菜单布局</li>
							<li class="theme-settings clearfix hidden-phone hidden-tablet">
								<div class="btn-group">
									<button disabled="disabled" id="left-sidebar"
										class="btn btn-inverse">左边</button>
									<button id="right-sidebar" class="btn btn-info">右边</button>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<script>
		if ('${count}' == '' || '${count}' == 0) {
			$("#countSpan").removeClass("alert-noty");
		}
	</script>
</div>