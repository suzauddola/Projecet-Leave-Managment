<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginLMS.aspx.cs" Inherits="LMS1.LoginLMS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>e-Leave</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery/jquery.validate.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#form1").validate();
    });
</script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(document).pngFix();
    });
    function SubmitButton_onclick() {

    }

</script>
</head>
<body id = "login-bg">
    <form id="form1" runat="server">
    <div>
       <!-- Start: login-holder -->
            <div id="login-holder">

	            <!-- start logo -->
	            <div id="logo-login">
		            <a href="#"><img src="images/shared/logo.gif" width="120" height="50" alt="" /></a>
	            </div>
	            <!-- end logo -->
	
	            <div class="clear"></div>
	            <!--  start loginbox ................................................................................. -->
	            <div id="loginbox">
	<div id="not-valid" style="margin-bottom: 6px; margin-top: -20px;">
                        <asp:Label ID="temp" runat="server" />
                    </div>
	            <!--  start login-inner -->
	            <div id="login-inner">
		            <table border="0" cellpadding="0" cellspacing="0">
		            <tr>
			            <th>Username</th>
			            <td>
                            <asp:TextBox ID="userNameTextBox"  runat="server" CssClass="login-inp required"></asp:TextBox></td>
		            </tr>
		            <tr>
			            <th>Password</th>
			            <td>
                        <asp:TextBox ID="passwordTextBox" runat="server" 
                                TextMode="Password" CssClass="login-inp required"></asp:TextBox></td>
		            </tr>
        
		            <tr>
			            <th></th>
			            <td valign="top"><br />
                            <asp:RadioButtonList ID="Priviledge" runat="server">
                                <asp:ListItem>Employee</asp:ListItem>
                                <asp:ListItem>Administrator</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
		            </tr>
        
		            <tr>
			            <th></th>
			            <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="submit-login" 
                                onclick="Button1_Click"  /></td>
		            </tr>
		            </table>
	            </div>
 	            <!--  end login-inner -->
	            <div class="clear"></div>
	            <a href="" class="forgot-pwd">Forgot Password?</a>
             </div>
             <!--  end loginbox -->
 
	            <!--  start forgotbox ................................................................................... -->
	            <div id="forgotbox">
		            <div id="forgotbox-text">Please send us your email and we'll reset your password.</div>
		            <!--  start forgot-inner -->
		            <div id="forgot-inner">
		            <table border="0" cellpadding="0" cellspacing="0">
		            <tr>
			            <th>Email Address:</th>
			            <td><input type="text" value=""   class="login-inp" /></td>
		            </tr>
		            <tr>
			            <th> </th>
			            <td><input type="button" class="submit-login"  /></td>
		            </tr>
		            </table>
		            </div>
		            <!--  end forgot-inner -->
		            <div class="clear"></div>
		            <a href="" class="back-login">Back to login</a>
	            </div>
	            <!--  end forgotbox -->

            </div>
            <!-- End: login-holder -->

            <div class="clear">&nbsp;</div>
    
            <!-- start footer -->         
            <div id="footer">
	            <!--  start footer-left -->
	            <div id="footer-left">
	
	            Copyright &copy; 2012, CodeMic. All rights reserved.
    
                </div>
	            <!--  end footer-left -->

	            <div class="clear">&nbsp;</div>
    </div>
    </form>
</body>
</html>
