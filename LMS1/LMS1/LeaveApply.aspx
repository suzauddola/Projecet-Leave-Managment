<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="LeaveApply.aspx.cs" Inherits="LMS1.LeaveApply" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <script type="text/javascript">
        $(function () {

            $('#<%= FromDateTextbox.ClientID  %>').datepicker({

                dateFormat: "yy-mm-dd", changeYear: true, yearRange: '2012:2012', defaultDate: 'newDate()'
            });

            $('#<%= ToDateTextbox.ClientID  %>').datepicker({

                dateFormat: "yy-mm-dd", changeYear: true, yearRange: '2012:2012', defaultDate: 'newDate()'
            });
        });

    </script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <!--  start page-heading -->
	<div id="page-heading">
		<h1>Leave Request</h1>
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
	        <!--  start content-table-inner -->
	        <div id="content-table-inner">
	
	        <table border="0" width="100%" cellpadding="0" cellspacing="0">
	        <tr valign="top">
	        <td>
	
	
		        <!--  start step-holder -->
		        <div id="step-holder">
			        <div class="step-no-off">LR</div>
			        <div class="step-dark-left"><a href="">Fill up the form below</a></div>
			        <div class="step-light-round">&nbsp;</div>
			        <div class="clear"></div>
		        </div>
		        <!--  end step-holder -->
	
		        <!-- start id-form -->
                <form>
		        <table border="0" cellpadding="0" cellspacing="0"  id="id-form">
                <tr>
		        <th valign="top">Leave Type:</th>
		        <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="styledselect_form_1">
                        <asp:ListItem>--- Select Leave ---</asp:ListItem>
                        <asp:ListItem Text="Casual Leave" Value="1">Casual Leave</asp:ListItem>
                        <asp:ListItem Text="Earned Leave" Value="2">Earned Leave</asp:ListItem>
                        <asp:ListItem Text="Sick Leave" Value="3">Sick Leave</asp:ListItem>
                        <asp:ListItem Text="Maternity Leave" Value="4">Maternity Leave</asp:ListItem>
                        <asp:ListItem Text="Duty Leave" Value="5">Duty Leave</asp:ListItem>
                    </asp:DropDownList>	
		        </td>
		        <td>
                    <div class="error-left"></div>
			        <div class="error-inner">This field is required.</div>
                </td>
		        </tr>

		        <tr>
		        <th valign="top">From:</th>
		        <td class="noheight">
		
			        <table border="0" cellpadding="0" cellspacing="0">
			        </table>
                    <asp:TextBox ID="FromDateTextbox" runat="server" CssClass="inp-form" 
                        AutoPostBack="True" ontextchanged="DateTextChange"></asp:TextBox>
		        </td>
		        <td></td>
	            </tr>

                <tr>
		        <th valign="top">To:</th>
		        <td class="noheight">
		
			        <table border="0" cellpadding="0" cellspacing="0">
			        </table>
                    <asp:TextBox ID="ToDateTextbox" runat="server" CssClass="inp-form" 
                        AutoPostBack="True" ontextchanged="DateTextChange"></asp:TextBox>
		
		        </td>
		        <td></td>
	            </tr>

		        <tr>
			        <th valign="top">Working Days:</th>
			        <td>
                        <asp:TextBox ID="WorkingDaysTextbox" runat="server" CssClass="inp-form required" 
                            AutoPostBack="True"></asp:TextBox>
                            <asp:RangeValidator id="RangeValidator1" runat="server" ControlToValidate="WorkingDaysTextbox" Type="Integer" ErrorMessage="Check your Date" MaximumValue="30" MinimumValue="1" ForeColor="Red"></asp:RangeValidator>
                            </td>
			        <td></td>
		        </tr>
		        
                <tr>
			        <th valign="top">Recommend Person:</th>
			        <td>
                        <asp:TextBox ID="RecommendedPersonTextbox" runat="server" CssClass="inp-form" 
                            ReadOnly="True"></asp:TextBox></td>
			        <td></td>
		        </tr>

                <tr>
			        <th valign="top">Approving Person:</th>
			        <td>
                        <asp:TextBox ID="ApprovingPersonTextbox" runat="server" Text="Suzauddola" 
                            CssClass="inp-form" ReadOnly="True" ></asp:TextBox></td>
			        <td></td>
		        </tr>

                <tr>
		            <th valign="top">Remarks:</th>
		            <td><asp:TextBox ID="Remarks" runat="server" CssClass="form-textarea" Height="97px" 
                            TextMode="MultiLine" Width="378px"></asp:TextBox></td>
		            <td></td>
	            </tr>


	            <tr>
		            <th>&nbsp;</th>
		            <td valign="top">
                        <asp:Button ID="SubmitButton" runat="server" 
                            CssClass="form-submit" onclick="SubmitButton_Click" />
                        <asp:Button ID="ResetButton" runat="server" CssClass="form-reset" 
                            onclick="ResetButton_Click" />
		            </td>
		            <td></td>
	            </tr>
	            </table>
                </form>
	            <!-- end id-form  -->

	        </td>

	        <td>

	        <!--  start related-activities -->
	        <div id="related-activities">
		
		        <!--  start related-act-top -->
		        <div id="related-act-top">
		        <img src="images/forms/header_related_act.gif" width="271" height="43" alt="" />
		        </div>
		        <!-- end related-act-top -->
		
		        <!--  start related-act-bottom -->
		        <div id="related-act-bottom">
		
			        <!--  start related-act-inner -->
			        <div id="related-act-inner">
			
				        <div class="left"><a href=""><img src="images/forms/icon_plus.gif" width="21" height="21" alt="" /></a></div>
				        <div class="right">
					        <h5>Leave Status</h5>
					        Check Status of requested Leaves- 
					        <ul class="greyarrow">
						        <li><a href="#">Click Here</a></li> 
						    </ul>
				        </div>
				
				        <div class="clear"></div>
				        <div class="lines-dotted-short"></div>
				
				        <div class="left"><a href=""><img src="images/forms/icon_minus.gif" width="21" height="21" alt="" /></a></div>
				        <div class="right">
					        <h5>Leave History</h5>
					        Check previous Leaves details-
					        <ul class="greyarrow">
						        <li><a href="#">Click Here</a></li> 
						    </ul>
				        </div>
				
				        <div class="clear"></div>
				        <div class="lines-dotted-short"></div>
				
				        <div class="left"><a href=""><img src="images/forms/icon_edit.gif" width="21" height="21" alt="" /></a></div>
				        <div class="right">
					        <h5>Leave Calender</h5>
					        Yearly Leave details-
					        <ul class="greyarrow">
						        <li><a href="#">Click Here</a></li> 
						    </ul>
				        </div>
				        <div class="clear"></div>
				
			        </div>
			        <!-- end related-act-inner -->
			        <div class="clear"></div>
		
		        </div>
		        <!-- end related-act-bottom -->
	
	        </div>
	        <!-- end related-activities -->

            </td>
            </tr>

            <tr>
            <td><img src="images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
            <td></td>
            </tr>
            </table>
 
            <div class="clear"></div>
 

            </div>
            <!--  end content-table-inner  -->
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
