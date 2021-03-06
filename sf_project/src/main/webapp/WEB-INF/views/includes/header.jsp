<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>        
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<style>
.footer {
	text-align: center;
	height: 40px;
    margin-top: 20px;
}

li {
	list-style: none;
}

.nav-bar {
	display:;
}

.page{
	text-align:center;
}
</style>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="back"
				style="float: left; 
				background-image: URL('https://blog.kakaocdn.net/dn/rvD0N/btqIN98covH/EvM2SADX36wTlh7G9etQu1/img.jpg'); 
				background-repeat: no-repeat;
  				background-position: center;
  				background-size: 100% 100%;
    			width: 100%;
    			height:200px;">
			</div>

			<ul class="nav navbar-top-links navbar-right"
				style="text-align: center;">
				<li class="dropdown">
				<a class="dropdown-toggle" href="/board/main">??????</a>
				</li>
				
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">html,css,javascript</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">html</a></li>
						<li><a href="#">css</a></li>
						<li><a href="#">javascript</a></li>
					</ul>
				</li>
				
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">??????</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">??????</a></li>
						<li><a href="#">c??????</a></li>
						<li><a href="#">?????????</a></li>
					</ul>
				</li>
				
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">DB</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">?????????</a></li>
						<li><a href="#">mysql</a></li>
						<li><a href="#">mariaDB</a></li>
					</ul>
				</li>
				<li class="dropdown">
				<a class="dropdown-toggle" href="/board/list">???????????????</a>
				</li>
				<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="position:relative; left:500px;"> 
					<i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
				</a>
				
				<ul class="dropdown-menu dropdown-user" style="left:450px;">
						<li><a href="/board/mget"><i class="fa fa-user fa-fw"></i> ????????????</a></li>
						<li><a href="/board/mregister"><i class="fa fa-gear fa-fw"></i> ????????????</a></li>


						<li class="divider"></li>
						<sec:authorize access="isAuthenticated()">

							<li><a href="/customLogout"><i
									class="fa fa-sign-out fa-fw"></i> Logout</a></li>
						</sec:authorize>

						<sec:authorize access="isAnonymous()">

							<li><a href="/customLogin"><i
									class="fa fa-sign-out fa-fw"></i> Login</a></li>
						</sec:authorize>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>

			<!-- <div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> /input-group
						</li>
						<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Charts<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="flot.html">Flot Charts</a></li>
								<li><a href="morris.html">Morris.js Charts</a></li>
							</ul> /.nav-second-level</li>
						<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
								Tables</a></li>
						<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
								Forms</a></li>
						<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
								Elements<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="panels-wells.html">Panels and Wells</a></li>
								<li><a href="buttons.html">Buttons</a></li>
								<li><a href="notifications.html">Notifications</a></li>
								<li><a href="typography.html">Typography</a></li>
								<li><a href="icons.html"> Icons</a></li>
								<li><a href="grid.html">Grid</a></li>
							</ul> /.nav-second-level</li>
						<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
								Multi-Level Dropdown<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Third Level <span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
									</ul> /.nav-third-level</li>
							</ul> /.nav-second-level</li>
						<li><a href="#"><i class="fa fa-files-o fa-fw"></i>
								Sample Pages<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="blank.html">Blank Page</a></li>
								<li><a href="login.html">Login Page</a></li>
							</ul> /.nav-second-level</li>
					</ul>
				</div>
				/.sidebar-collapse
			</div> -->
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">

			<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
			<script src="/resources/js/jquery.min.js"></script>