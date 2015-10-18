<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageR.Master" CodeBehind="LeaveStatusR.aspx.cs" Inherits="LMS1.LeaveStatusR" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            width: 200px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <!--  start page-heading -->
	<div id="page-heading">
		<h1>Leave Status</h1>
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
			
				<!--  start product-table ..................................................................................... -->
                <h3>Check below your requested Leave Status:</h3>

                <br />

                <table border="0" width="75%" cellpadding="0" cellspacing="0" id="product-table">
				<tr>
					<th class="table-header-repeat line-left minwidth-1" style="width: 200px"><a href="">Leave Type</a>	</th>
					<th class="table-header-repeat line-left minwidth-1" style="width: 200px"><a href="">Total Leave Days</a></th>
					<th class="table-header-repeat line-left" style="width: 200px"><a href="">Details</a></th>
					<th class="table-header-repeat line-left"><a href="">Status</a></th>
				</tr>
				<tr>
					<td class="style2">Sick Leave</td>
					<td class="style2">21</td>
					<td class="style2"><a href="#">Click Here</a></td>
					<td><a href="#">Pending</a></td>
				</tr>
				<tr class="alternate-row">
					<td class="style2">Casual Leave</td>
					<td class="style2">10</td>
					<td class="style2"><a href="#">Click Here</a></td>
					<td><a href="#">Approved</a></td>
				</tr>
				<tr>
					<td class="style2">Casual Leave</td>
					<td class="style2">1</td>
					<td class="style2"><a href="#">Click Here</a></td>
					<td><a href="#">Rejected</a></td>
				</tr>
                <tr class="alternate-row">
					<td class="style2">Earned Leave</td>
					<td class="style2">10</td>
					<td class="style2"><a href="#">Click Here</a></td>
					<td><a href="#">Approved</a></td>
				</tr>
                <tr>
					<td class="style2">Duty Leave</td>
					<td class="style2">5</td>
					<td class="style2"><a href="#">Click Here</a></td>
					<td><a href="#">Rejected</a></td>
				</tr>
								
				</table>

                <br />
				      
				

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
