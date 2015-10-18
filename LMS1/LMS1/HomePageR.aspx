<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageR.Master" CodeBehind="HomePageR.aspx.cs" Inherits="LMS1.HomePageR1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 320px;
        }
        .style2
        {
            width: 250px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Home Page</h1>
	</div>
	<!-- end page-heading -->

	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
			
				<!--  start message-red -->
				<div id="message-red">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<!--<td  class="red-left">Your Leave Request has been rejected. <a href="#">Click here for details</a></td>-->
					<!--<td class="red-right"><a class="close-red"><img src="images/table/icon_close_red.gif"   alt="" /></a></td>-->
				</tr>
				</table>
				</div>
				<!--  end message-red -->

                <!--  start message-yellow -->
				<div id="message-yellow">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<!--<td class="yellow-left">You have a Pending Leave Request. <a href="#">Go to your Leave Status Page</a></td>-->
					<!--<td class="yellow-right"><a class="close-yellow"><img src="images/table/icon_close_yellow.gif"   alt="" /></a></td>-->
				</tr>
				</table>
				</div>
				<!--  end message-yellow -->
				
				<!--  start message-green -->
				<div id="message-green">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<!--<td class="green-left">Your Leave Request has been accepted. <a href="#">Click here for details</a></td>-->
					<!--<td class="green-right"><a class="close-green"><img src="images/table/icon_close_green.gif"   alt="" /></a></td>-->
				</tr>
				</table>
				</div>
				<!--  end message-green -->

                <!--  start message-blue -->
				<div id="message-blue">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
				</div>
				<!--  end message-blue -->
		
		 
				<!--  start Leave Calender..................................................................................... -->
                <br />
                <h3>Leave Calender</h3>
				<form id="mainform" action="">
				<table border="0" width="75%" cellpadding="0" cellspacing="0" id="product-table">
				<tr>
					<th class="table-header-repeat line-left minwidth-1" style="width: 320px"><a href="">Leave Type</a>	</th>
					<th class="table-header-repeat line-left" style="width: 250px"><a href="">Total Leave Days</a></th>
					<th class="table-header-repeat line-left"><a href="">Details</a></th>
				</tr>
				<tr>
					<td class="style1">Casual Leave</td>
					<td class="style2">10</td>
					<td>..................</td>
				</tr>
				<tr class="alternate-row">
					<td class="style1">Earned Leave</td>
					<td class="style2">10</td>
					<td>..................</td>
				</tr>
				<tr>
					<td class="style1">Sick Leave</td>
					<td class="style2">..................</td>
					<td>..................</td>
				</tr>
                <tr class="alternate-row">
					<td class="style1">Maternity Leave</td>
					<td class="style2">..................</td>
					<td>..................</td>
				</tr>
                <tr>
					<td class="style1">Duty Leave</td>
					<td class="style2">5</td>
					<td>..................</td>
				</tr>
								
				</table>
				<!--  Leave Calender................................... --> 
				</form>
			</div>
			<!--  end content-table  -->
		
			
			<div class="clear"></div>
		 
		</div>
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>
	<div class="clear">&nbsp;</div>

</asp:Content>
