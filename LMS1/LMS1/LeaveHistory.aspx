<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="LeaveHistory.aspx.cs" Inherits="LMS1.LeaveHistory" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>Leave History</h1>
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
                <h3>Check below your previous Leave History:</h3>

                <br />
                <asp:GridView ID="GridView1" runat="server" Width="90%" 
                    AutoGenerateColumns="False" Height="139px">
                    <AlternatingRowStyle BackColor="#999999" />
                    <Columns>
                        <asp:BoundField DataField="leave_name" HeaderText="Leave Type" />
                        <asp:BoundField DataField="starting_date" HeaderText="From" 
                            DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="ending_date" HeaderText="To" 
                            DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="num_of_days" HeaderText="Number of Days" />
                        <asp:BoundField DataField="applying_date" HeaderText="Apply Date" />
                        <asp:HyperLinkField DataNavigateUrlFields="leave_no_index" 
                            DataNavigateUrlFormatString="~/Details.aspx?id={0}" Text="Details"/>
                    </Columns>
                </asp:GridView>

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
