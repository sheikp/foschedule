<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestResult.aspx.cs" Inherits="FOWeb4.TestResult" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head runat="server">
		<title>FiOS Order - Simple Order System to get connected!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="common/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="common/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="common/css/ie8.css" /><![endif]-->

        <link href="http://fios.verizon.com/css/normalize.css" rel="stylesheet" media="screen">
        <link href="http://fios.verizon.com/css/style.css" rel="stylesheet" media="screen">
        <link href="http://fios.verizon.com/landing_pages/4001/css/experience.css" rel="stylesheet" media="screen">
        <link href="http://fios.verizon.com/css/jquery.fancybox.css" rel="stylesheet" media="screen">

	</head>
	<body class="landing">
		<div id="page-wrapper">
	
            <div class="primary-nav-wrapper">
	<div class="row group">
		<div class="grid-16">
		
			<nav class="primary-nav" role="navigation">
				<ul itemscope="itemscope" itemtype="http://www.schema.org/SiteNavigationElement">
					<li><a href="default.aspx">Order</a></li>
                    <li><a href="repair.aspx">Repair Ticket</a></li>	
					<li><a href="myorder.aspx">Status</a></li>					
				</ul>
				<!-- END .main_nav -->
			</nav>
			<!-- END .primary-nav -->
			
		</div>
		<!-- END .grid-16 -->
	</div>
	<!-- END .row -->
</div>

			<section class="content-deck order-now">
	<div class="row" >
		
		
		
		
		<div class="grid-16">
			<h3>Automation Test Result</h3>
				
			<div class="cta-footer-form">			
				
				<form name="contact_form" runat="server"> 
	<asp:GridView ID="dgTest" runat="server" AutoGenerateColumns="true"></asp:GridView>          
	        
</form>
			</div>
			<!-- END .request-call -->
			
		</div>

       
		<!-- END .grid-5 -->
		
	</div>
	<!-- END .row -->
            
			</section>
			
     
            
			

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Simple. All rights reserved.</li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="common/js/jquery.min.js"></script>
			<script src="common/js/jquery.dropotron.min.js"></script>
			<script src="common/js/jquery.scrollgress.min.js"></script>
			<script src="common/js/skel.min.js"></script>
			<script src="common/js/util.js"></script>
			<!--[if lte IE 8]><script src="common/js/ie/respond.min.js"></script><![endif]-->
			<script src="common/js/main.js"></script>

	</body>
</html>



