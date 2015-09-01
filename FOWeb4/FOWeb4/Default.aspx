<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FOWeb4.Default" %>
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

			<!-- Header -->
           <div class="masthead-upper">
		<div class="row">
			<div class="grid-16">

				<a href="http://fios.verizon.com/" class="logo-verizon-fios">Verizon FiOS Authorized Retailer</a>

				

	<div class="grad-primary banner-perfect-package is-closed">

		<div class="is-closed">
			<div class="col1 chevron">
				<span>Order Now</span>
			</div>

			<div class="col3">
				<strong style="color:white">Find your perfect package</strong>
				SWITCH TO FiOS!
			</div> <!-- END .col3 -->
		</div>
	</div>
	<!-- END .urgency-banner -->


				<div class="masthead-cta">
					<span class="h-phone">1-877-696-3455</span>
					<span class="promo-wrap">
						Use Promo Code: <span class="h-promo">Q81-642</span>
					</span>
				</div>
				<!-- END .masthead-cta -->

			</div>
			<!-- END .grid-16 -->
		</div>
		<!-- END .row -->
	</div>
				

            <div class="primary-nav-wrapper">
	<div class="row group">
		<div class="grid-16">
		
			<nav class="primary-nav" role="navigation">
				<ul itemscope="itemscope" itemtype="http://www.schema.org/SiteNavigationElement">
					<li><a href="http://fios.verizon.com/">Home</a></li>
					<li><span itemprop="name">
						<a itemprop="url" href="http://fios.verizon.com/fios-plans.html">Plans &amp; Pricing</a></span>
						<ul class="sub-nav">
							<li><a href="http://fios.verizon.com/fios-bundles.html">FiOS Bundles</a></li>
							<li><a href="http://fios.verizon.com/fios-triple-plays.html">FiOS Triple Play</a></li>
							<li><a href="http://fios.verizon.com/fios-double-plays.html">FiOS Double Play</a></li>
						</ul>
					</li>
					<li><span itemprop="name">
						<a itemprop="url" href="http://fios.verizon.com/why-fios.html">Why FiOS?</a></span>
						<ul class="sub-nav">
							<li><a href="http://fios.verizon.com/fios-coverage.html">FiOS Availability</a></li>
							<li><a href="http://fios.verizon.com/compare.html">FiOS Vs. Cable</a></li>
							<li><a href="http://fios.verizon.com/fios-cable.html">FiOS Cable</a></li>
							<li><a href="http://fios.verizon.com/fios-reviews.html">FiOS Reviews</a></li>
						</ul>
					</li>
					<li><span itemprop="name"><a itemprop="url" href="http://fios.verizon.com/fios-internet.html">FiOS Internet</a></span>
						<ul class="sub-nav">
							<li><a href="http://fios.verizon.com/fios-quantum.html">FiOS Quantum <sup>SM</sup></a></li>
							<li><a href="http://fios.verizon.com/fios-speeds.html">FiOS Speeds</a></li>
						</ul>
					</li>
					
					<li><span itemprop="name">
						<a itemprop="url" href="http://fios.verizon.com/fios-tv.html">FiOS TV</a></span>
						<ul class="sub-nav">
							<li><a href="http://fios.verizon.com/fios-on-demand.html">On Demand</a></li>
							<li><a href="http://fios.verizon.com/tv-channels.html">TV Channels</a></li>
							<li><a href="http://fios.verizon.com/fios-tv-equipment.html">FiOS Equipment</a></li>
							<li><a href="http://fios.verizon.com/quantum-tv.html">FiOS Quantum<sup>SM</sup> TV</a></li>
							<li><a href="http://fios.verizon.com/upgrade-to-quantum-tv.html">Upgrade to Quantum<sup>SM</sup> TV</a></li>
						</ul>
					</li>
					<li itemprop="name"><a itemprop="url" href="http://fios.verizon.com/fios-digital-voice.html">FiOS Digital Voice</a></li>
					
					<li><a href="http://fios.verizon.com/existing-customers.html">Existing Customers</a></li>
					<li><a href="myorder.aspx">My Order</a></li>
				</ul>
				<!-- END .main_nav -->
			</nav>
			<!-- END .primary-nav -->
			
		</div>
		<!-- END .grid-16 -->
	</div>
	<!-- END .row -->
</div>

			<!-- Banner -->
				<section class="hero hero-order-now" style="height:450px; ">
					<div class="row" style="height:450px; ">
		<div class="grid-16" style="height:450px; background-image:url(common/img/order-now-devices.jpg); background-position:right">
            <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (p) {
            var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
            var mapOptions = {
                center: LatLng,
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            var marker = new google.maps.Marker({
                position: LatLng,
                map: map,
                draggable: true,
                title: "Your location: Latitude: " + p.coords.latitude + " & Longitude: " + p.coords.longitude
            });
            var zipbox = document.getElementById("txtZip");
            var latlng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
            var geocoder = geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    for (var component in results[0]['address_components']) {
                        for (var i in results[0]['address_components'][component]['types']) {
                            if (results[0]['address_components'][component]['types'][i] == "postal_code") {
                                zipbox.value = results[0]['address_components'][component]['short_name'];
                                
                            }
                        }
                    }
                }
            });
            google.maps.event.addListener(marker, "click", function (e) {
                var infoWindow = new google.maps.InfoWindow();
                infoWindow.setContent(marker.title);
                infoWindow.open(map, marker);              
               
            });
            
            google.maps.event.addListener(marker, 'dragend', function() {
                map.setCenter(marker.getPosition());
                geocoder.geocode({'latLng': marker.getPosition()}, function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        for (var component in results[0]['address_components']) {
                            for (var i in results[0]['address_components'][component]['types']) {
                                if (results[0]['address_components'][component]['types'][i] == "postal_code") {
                                    zipbox.value = results[0]['address_components'][component]['short_name'];

                                }
                            }
                        }
                    }
                });
            });

        
        });
    } else {
        alert('Geo Location feature is not supported in this browser.');
    }

    function validate()
    {
        var ph = document.getElementById("txtPhone");
        var ml = document.getElementById("txtEmail");
        var zp = document.getElementById("txtZip");
        if(ph.value == "" || ml.value == "" || zp.value == "")
        {
            alert("Please enter all the information to procees!");
            return false;
        }      

    }
    
</script>
				
			 <h1>Order Verizon FiOSo</h1>
			<h3>Great service, Incredible Value. Order FiOS Today.- TEST</h3>
			<h4><em>Upgrade your home with FiOS Internet, TV &amp; Digital Voice </em></h4>
			
            <!--<div class="grad-secondary call-now-bar">
				<strong>Order NOW!</strong>
				<span class="h-phone">1-877-696-3455</span>
			</div>
			<!-- END .call-now-bar -->
			
            <div class="grid-9" style="height:450px;">

                <div class="cta-footer-form">
                  
                    <form name="contact_form" runat="server" >                        
                        <input type="hidden" id="hdnlatlon" value="" />
                        <input type="text" id="txtPhone" runat="server" name="Phone1" class="Phone1" value="" placeholder="Phone Number"  >
                        <input type="text" id="txtEmail" runat="server" name="Phone1" class="Phone1" value="" placeholder="Email"  >
                        <input type="text" id="txtZip" runat="server" name="ZipCode" class="ZipCode" value="" placeholder="ZIP Code"   pattern="(\d{5}([\-]\d{4})?)" title="enter a valid five-digit ZIP code">
                        <input type="hidden" id="popupctrl" runat="server" />
                        <asp:LinkButton ID="lnkOrder" runat="server" CssClass="grad-primary btn btn-highlight"  OnClick="lnkOrder_Click" Text="Sign up"></asp:LinkButton>
                      <asp:scriptmanager id="ScriptManager1" runat="server">
</asp:scriptmanager>
                        <cc1:modalpopupextender id="ModalPopupExtender1" runat="server" 
	okcontrolid="btnOkay" 
	popupcontrolid="Panel1" 
    TargetControlID="popupctrl"	
	backgroundcssclass="popupbg">
</cc1:modalpopupextender>
                        
	        <div id="Panel1" class="box" style="width:500px; " runat="server">
                
                <div >
                    <span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-size:2em;color:tomato"><asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></span>
                </div>
                <div style="text-align:center">
                   <br /> <input id="btnOkay" type="button" value="Done" style="align-content:center"/>
                    
		</div>
        </div>

                     </form>
                    
                </div>

                	
                <!-- END .cta-footer-form -->
            </div>
            <div id="dvMap" style="width:500px; height:500px; float:right; position:absolute; top: 10px; right:10px;" ></div>
				
		<!-- END .grid-16 -->
	</div>

        </div>
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
