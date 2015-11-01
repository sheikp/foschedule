<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repair.aspx.cs" Inherits="FOWeb4.Repair" %>
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

			<section class="content-deck order-now"  ><center>
	<div class="row" style="width:700px;">
		
		
		
		
		<div class="grid-7">
			
			<div class="request-call">			
				<h3>Repair Ticket</h3>
				<p>Fill out the following form to file your complaint.</p>
				<form name="contact_form" runat="server"> 
	
	<input type="text" id="txtcustid"  class="FirstName" value="" placeholder="Customer ID" required="" runat="server">	
	
    <textarea rows="3" id="txtdescription" style="color:gray;font-size:large;"  class="FirstName" value="" placeholder="Description" required="" runat="server" /><br />
	<asp:Button ID="btnStatus"  Text="Submit"  runat="server" OnClick="btnStatus_Click"/>
	  <input type="hidden" id="popupctrl" runat="server" />
                         <asp:scriptmanager id="ScriptManager1" runat="server">
</asp:scriptmanager>
                        <cc1:modalpopupextender id="ModalPopupExtender1" runat="server" 
	okcontrolid="closeimg" 
	popupcontrolid="Panel1" 
    TargetControlID="popupctrl"	
	backgroundcssclass="popupbg">
</cc1:modalpopupextender>

                         <cc1:modalpopupextender id="ModalPopupExtender2" runat="server" 
	okcontrolid="closeimg2" 
	popupcontrolid="Panel2" 
    TargetControlID="popupctrl"	
	backgroundcssclass="popupbg">
</cc1:modalpopupextender>

                
                        <div id="Panel1" class="box" style="width:500px;" runat="server" >
               <div style="text-align:right" > <img src="common/img/close.png" width="30" id="closeimg" style="cursor:pointer; " /></div>
                <div >
                    <span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-size:1.5em; color:gray"><asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></span>
                </div>
                <div style="text-align:center">
                   <br /> <asp:Button id="btnOkay" runat="server" OnClick="btnOkay_Click" Text="Confirm" style="align-content:center"/> <asp:Button id="btnLater" Text="Later" runat="server" OnClick="btnLater_Click" style="align-content:center"/>
                    
		</div>
        </div>                     
                        <div id="Panel2" class="box" style="width:500px;color:gray " runat="server">
               <div style="text-align:right"> <img src="common/img/close.png" width="30" id="closeimg2" style="cursor:pointer; " /></div>
                <div >
                    <span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-size:1.5em;">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </span>
                </div>
                <div style="text-align:center">
                   <br /> <asp:Button id="btnOkay2" runat="server" OnClick="btnOkay2_Click" Text="Confirm" style="align-content:center"/>
                    
		            </div>
                </div>
                     

                    </form>
			</div>
			<!-- END .request-call -->
			
		</div>

       
		
	</div></center>
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



