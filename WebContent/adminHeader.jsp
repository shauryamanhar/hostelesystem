<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page 
	import="java.util.*" 
	import="java.sql.*"
	import="sis.com.*"
	import="sis.com.controller.*" 
	import="sis.com.dao.*"
	import="sis.com.dao.impl.*"
	import="sis.com.daoFactory.*"
	import="sis.com.util.*"
	import="sis.com.bo.*"
	 
%>    
<%-- <%
Boolean adminLoginCheck = false;
System.out.println("adminLoginCheck==>"+adminLoginCheck);
if(session.getAttribute("adminLoginCheck")==null || (Boolean)session.getAttribute("adminLoginCheck")==false){
	adminLoginCheck=false;
}else{
	adminLoginCheck=true;
}
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	<meta name="author" content="Seema Dewangan">
	<meta name="author" content="Sunidhi Garg">
	<meta name="author" content="Monika Jaiswal">
	<meta name="author" content="Shaurya Manhar">
	<meta name="description" content="Hostel Management System for institute based on J2EE">
	<meta name="keywords" content="hostel,system,management,java,j2ee,girl hostel,boys hostel,attendance,leave">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Abel|Anton|Exo+2|Josefin+Sans|Noto+Sans|Open+Sans|PT+Sans" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
	<link rel="stylesheet" href="css/main.css">
</head>
<style>
.nav-sg li{
	display: inline;
}
.modal{
	padding-top:4%;
}
.affix + .container {
      padding-top: 120px;
}
</style>
<body >
				<div class="container container-affix-sm" style="position: relative;font-family: Arial;width:100%;">
					<img src="images//ii.png" alt="Nature" style="width:100%;-webkit-filter: blur(2px); filter: blur(5px);">
						<div class="container text-block">
							<div class="logo col-md-8" style="float:left;margin:10	px 0px;">
								<img class="img-responsive" src="images//nitrr.gif" style="float: left;width:150pxl;height:138px;padding:2px;margin: 2px;">
									<h2> National Institute of Technology, Raipur</h2>
									<!-- <h2>à¤°à¤¾à¤·à¥à¤à¥à¤°à¥à¤¯ à¤ªà¥à¤°à¥à¤¦à¥à¤¯à¥à¤à¤¿à¤à¥ à¤¸à¤à¤¸à¥à¤¥à¤¾à¤¨, à¤°à¤¾à¤¯à¤ªà¥à¤° </h2> -->
									<!-- <h2>à¤°à¤¾à¤·à¥à¤à¥à¤°à¥à¤¯ à¤ªà¥à¤°à¥à¤¦à¥à¤¯à¥à¤à¤¿à¤à¥ à¤¸à¤à¤¸à¥à¤¥à¤¾à¤¨ à¤°à¤¾à¤¯à¤ªà¥à¤°</h2> -->
									<h2>  
									राष्ट्रीय प्रौद्योगिकी संस्थान ,रायपुर
									</h2>
								</div>
							</div>
						</div>
						<nav class="navbar navbar-default nav-sm " data-spy="affix" data-offset-top="186" >
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li class="active">
											<a href="admin_home.jsp">
												<span class="glyphicon glyphicon-home">&nbsp;HOME 
												<span class="sr-only">(current)</span>
											</a>
										</li>
										<li>
											<a href="stuform1.jsp">
												<span class="glyphicon glyphicon-user">&nbsp;REGISTER
											</a>
										</li>
										<li>
										 <a href="review.jsp">REVIEWS</a>
											
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">FACILITIES 
											<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="boys_fac.jsp">BOYS</a>
												</li>
												<li role="separator" class="divider"></li>
												<li>
													<a href="girls_fac.jsp">GIRLS</a>
												</li>
												<!-- <li><a href="#">Something else here</a></li> -->
												<!-- <li role="separator" class="divider"></li><li><a href="#">Separated link</a></li><li role="separator" class="divider"></li><li><a href="#">One more separated link</a></li> -->
											</ul>
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">HOSTEL
												<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="hostelA.html">A&nbsp;<small>MANIPAL</small></a>
												</li>
												<li>
													<a href="hostelB.html">B&nbsp;<small>CHIRTRAKOT</small></a>
												</li>
												<li>
													<a href="hostelC.html">C&nbsp;<small>TIRATHGARH</small></a>
												</li>
												<li>
													<a href="hostelD.html">D&nbsp;<small>MALHAR</small></a>
												</li>
												<li>
													<a href="hostelH.html">H&nbsp;<small>SIRPUR</small></a>
												</li>
												<li>
													<a href="hostelF.html">F&nbsp;<small>KOTUMSAR</small></a>
												</li>
												<li role="separator" class="divider"></li>
												<li>
													<a href="hostelE.html">E</a>
												</li>
												<li>
													<a href="admin_home.jsp">G</a>
												</li>
												<li>
													<a href="#">PG</a>
												</li>
												<!-- <li><a href="#">Something else here</a></li> -->
												<!-- <li role="separator" class="divider"></li><li><a href="#">Separated link</a></li><li role="separator" class="divider"></li><li><a href="#">One more separated link</a></li> -->
											</ul>
										</li>
										<li>
											<a href="contact.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;CONTACT</a>
										</li>
										<li>
											<a href="map.jsp"><span class="glyphicon glyphicon-globe"></span>&nbsp;MAP</a>
										</li>
									</ul>
						<%
						System.out.println("login check before if==>"+session.getAttribute("adminLoginCheck"));
						if(session.getAttribute("adminLoginCheck")==null ){
						%>
						<ul class="nav navbar-nav navbar-right">
							<!-- <li><a href="#">Link</a></li> -->
							<li class="dropdown">
								<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">LOG IN&nbsp;<span class="glyphicon glyphicon-cog"></span></a>
								<ul class="dropdown-menu" style="color:white;">
									<li>
										<a href="studentLogin.jsp">STUDENT</a>
									</li>
									<li>
										<a href="parent_login.jsp">PARENT</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="admin_login.jsp">FACULTY</a>
									</li>
								</ul>
							</li>
						</ul>
						<%}//if
						else{%>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=session.getAttribute("adminUsername") %>&nbsp;<span class="glyphicon glyphicon-cog"></span></a>
								<ul class="dropdown-menu" style="margin-top: 0px;color:black;max-width: 200px;width:200px;word-wrap:break-word;">
									<li>
										<div class="well" style="padding :15px;margin:8px;">
											<b><small>logged as administrator</small></b>
											<h4>ID: <%=session.getAttribute("adminId") %></h4>
										</div>
									</li>
									<li class="logout">
										<a href="AdminLogoutController"><span style="color: red;">log out&nbsp;<span class="glyphicon glyphicon-log-out" style="font-size: 15px;"></span></a>
									</li>
								</ul>
							</li>
						</ul>
						<%} %>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>


<!-- START CONTAINER FROM HERE -->
<!-- ADD TITLE ON YOUR PAGE -->

<%-- USE <jsp:include page="header.jsp" /> --%>


<!-- CONTAINER START -->
<!-- <div class="container container-sm border" style=""> -->