<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/common/js/TestJavascript.js"></script>
<script type="text/javascript" src="/common/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/common/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="/common/js/bootstrap.min.js"></script>

<link href="/common/css/data-table.css" type="text/css" rel="Stylesheet" />
<link href="/common/css/bootstrap.css" type="text/css" rel="Stylesheet" />
<link href="/common/css/bootstrap-theme.css" type="text/css"
	rel="Stylesheet" />
<title>bootstrap 组件测试</title>
</head>
<body>
	<div id="main-content">
		<div class="container-fluid">
	<div class="row-fluid">
	
	
	
				<div class="bs-docs-grid">
					<div class="row-fluid">
						<h4 class="heading">模态窗口</h4>
						<!-- 这里是模态窗口的代码 -->
						<div class="span12">
							<!-- Button to trigger modal -->
							<a href="#myModal" role="button" class="btn" data-toggle="modal">查看演示案例</a>

							<!-- Modal -->
							<div id="myModal" class="modal hide fade" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h3 id="myModalLabel">Modal header</h3>
								</div>

								<div class="modal-body">
									<p>One fine body…</p>
								</div>

								<div class="modal-footer">
									<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
									<button class="btn btn-primary">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<br><br>
					<h4 class="heading">下拉按钮</h4>
					<div class="bs-docs-grid">
						<div class="span12">
							<div class="bs-docs-example">
								<ul class="nav nav-pills">
									<li class="active"><a href="#">Regular link</a></li>
									
									<li class="dropdown"><a class="dropdown-toggle" id="drop4"
										role="button" data-toggle="dropdown" href="#">Dropdown <b
											class="caret"></b></a>
										<ul id="menu1" class="dropdown-menu" role="menu"
											aria-labelledby="drop4">
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">Action</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">Another action</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">Something else here</a></li>
											<li role="presentation" class="divider"></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">Separated link</a></li>
										</ul></li>
								</ul>
								<!-- /tabs -->
							</div>
						</div>
					</div>
					
					
					<br><br>
					
					
				</div>

			</div>
		</div>
	</div>
</body>
</html>