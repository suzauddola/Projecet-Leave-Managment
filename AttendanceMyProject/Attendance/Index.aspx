<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Attendance.Index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Home</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="Content/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Css/Site.css" rel="stylesheet" />
    <script src="Content/Js/jquery-1.10.2.min.js"></script>
    <script src="Content/Js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <form id="home" runat="server" style="height: 100%">
            
            <div class="form-group" >

                <div class="col-sm-12" style="padding: 0; height: 25%"> 
                    <div class="col-sm-4 col-xs-4" >
                        <button type="button" class="btn btn-success btn-position" onclick="return attendanceInfo();" style="height: 90px; padding-left: 0px; width: 100%">Attendance</button>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-danger" Text="Time Card" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="Leave" style="height: 90px; width: 100%" runat="server"/>
                    </div>

                </div>

            </div>
            
            <div class="form-group">
                <div class="col-sm-12" style="padding: 0; height: 25%"> 
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="User Info" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-danger" Text="Two" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="Three" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12" style="padding: 0; height: 25%"> 
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="One" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-danger" Text="Two" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="Three" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12" style="padding: 0; height: 25%"> 
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="One" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-danger" Text="Two" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="Three" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12" style="padding: 0; height: 25%"> 
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="One" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-danger" Text="Two" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                    <div class="col-sm-4 col-xs-4" >
                        <asp:Button CssClass="btn btn-success" Text="Three" style="height: 90px; width: 100%" runat="server"/>
                    </div>
                </div>
            </div>

        </form>
        <%--<form id="form2" runat="server">
            <div class="row form-group">
                <asp:Label CssClass="control-label col-sm-offset-1 col-sm-5 modal-header header-position" runat="server">User Information </asp:Label>
            </div>
            <div class="center-block">
                <div class="row form-group">
                    <asp:Label class="control-label col-sm-2 label-position" runat="server">Type :</asp:Label>
                    <div class="col-sm-5">
                        <asp:Label CssClass="control-label" runat="server" ID="UserType"></asp:Label>
                    </div>
                </div>
                <div class="row form-group">
                    <asp:Label CssClass="control-label col-sm-2 label-position" runat="server">User ID :</asp:Label>
                    <div class="col-sm-5">
                        <asp:Label CssClass="control-label" runat="server" ID="UserId"></asp:Label>
                    </div>
                </div>
                <div class="row form-group">
                    <asp:Label class="control-label col-sm-2 label-position" runat="server">User Name :</asp:Label>
                    <div class="col-sm-5">
                        <asp:Label CssClass="control-label" runat="server" ID="NameOfUser"></asp:Label>
                    </div>
                </div>
                
                <div class="row form-group">
                    <asp:Label class="control-label col-sm-2 label-position" runat="server">Designation :</asp:Label>
                    <div class="col-sm-5">
                        <asp:Label CssClass="control-label" runat="server" ID="Designation"></asp:Label>
                    </div>
                </div>
                <div class="row form-group">
                    <asp:Label class="control-label col-sm-10 label-position" ID="msg" BorderColor="green" runat="server"></asp:Label>
                </div>
            </div>
        </form>--%>
    </div>

</body>
<script>
    var data = localStorage.getItem('userInfo');
    var userData = JSON.parse(data);
    document.getElementById("UserId").innerText = userData.emp_id;
    document.getElementById("NameOfUser").innerText = userData.user_name;
    document.getElementById("UserType").innerText = userData.user_type;
    document.getElementById("Designation").innerText = userData.emp_designation;

    function attendanceInfo() {
        window.location = "Attendance.aspx";
    }
</script>
</html>
