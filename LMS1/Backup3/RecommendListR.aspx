<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageR.Master" CodeBehind="RecommendListR.aspx.cs" Inherits="LMS1.RecommendListR" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <!--  start page-heading -->
	<div id="page-heading">
		<h1>Recommend List</h1>
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

                <!--  start message-yellow -->
				<div id="message-yellow">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="yellow-left">You have a new Leave Request. <a href="#">Check Below</a></td>
					<td class="yellow-right"><a class="close-yellow"><img src="images/table/icon_close_yellow.gif"   alt="" /></a></td>
				</tr>
				</table>
				</div>
				<!--  end message-yellow -->

                <!--  start message-green -->
				<div id="message-green">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<!--<td class="green-left">You have approved a Leave Request. <a href="#">Click Here for Details</a></td>-->
					<!--<td class="green-right"><a class="close-green"><img src="images/table/icon_close_green.gif"   alt="" /></a></td>-->
				</tr>
				</table>
				</div>
				<!--  end message-green -->

                <!--  start message-red -->
				<div id="message-red">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<!--<td class="red-left">You have rejected a Leave Request. <a href="">Click Here for Details</a></td>-->
					<!--<td class="red-right"><a class="close-red"><img src="images/table/icon_close_red.gif"   alt="" /></a></td>-->
				</tr>
				</table>
				</div>
				<!--  end message-red -->

                <br />
			
				<h3>Check below for Leave Requests:</h3>

                <br />


                <asp:GridView ID="RecommendList" runat="server" Height="350px" Width="950px" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                    AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Faculty Name" />
                        <asp:BoundField DataField="designation" HeaderText="Designation" />
                        <asp:BoundField DataField="leave_name" HeaderText="Leave Type" />
                        <asp:BoundField DataField="starting_date" DataFormatString="{0:dd/MM/yyyy}" 
                            HeaderText="From" />
                        <asp:BoundField DataField="ending_date" DataFormatString="{0:dd/MM/yyyy}" 
                            HeaderText="To" />
                        <asp:BoundField DataField="num_of_days" HeaderText="Number of Days" />
                        <asp:BoundField DataField="applying_date" HeaderText="Apply Date &amp; Time" />
                        <asp:BoundField DataField="apply_remakrs" HeaderText="Remarks" />
                        <asp:HyperLinkField DataNavigateUrlFields="leave_no_index" 
                            DataNavigateUrlFormatString="~/Recommend.aspx?id={0}" Text="Recommend" />
                        <asp:HyperLinkField DataNavigateUrlFields="leave_no_index" 
                            DataNavigateUrlFormatString="~/Deny.aspx?id={0}" Text="Reject" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />

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
