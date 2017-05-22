<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Attendance.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance - login</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link href="Content/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Css/Site.css" rel="stylesheet" />
    <script src="Content/Js/jquery-1.10.2.min.js"></script>
    <script src="Content/Js/bootstrap.min.js"></script>
</head>
<body class="container">
    <div class="center-block center-body">
        <form id="form1" runat="server">
            <div class="row form-group">
                <asp:Label CssClass="control-label col-sm-2 label-position" runat="server">Name : </asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox id="name" type="text" CssClass="form-control" Name="Name" placeholder="Enter User Name" runat="server" />
                </div>
            </div>
            <div class="row form-group">
                <asp:Label class="control-label col-sm-2 label-position" runat="server">Password : </asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox id="pass" type="password" CssClass="form-control" Name="Pass" placeholder="Enter Password" runat="server" />
                </div>
            </div>
            <div class="row form-group">
                <asp:Label class="control-label col-sm-2 label-position" runat="server"></asp:Label>
                <div class="col-sm-5">
                    <%--<asp:Button Text="Submit" CssClass="btn btn-default" OnClick="LoginSubmit" runat="server" />--%>
                    <button type="button" class="btn btn-default" onclick="return FindUserInfo();">submit</button>
                </div>
            </div>
            <div class="row form-group">
                <asp:Label class="control-label col-sm-5 label-position header-position" ID="msg" BorderColor="green" runat="server"></asp:Label>
            </div>
        </form>
    </div>
    
<script>
    // Add two numbers
    function FindUserInfo() {
        var name = document.getElementById('name');
        var pass = document.getElementById('pass');
        if (name.value === "" && pass.value === "") {
            document.getElementById('name').value = document.getElementById('pass').value = "";
            document.getElementById('msg').innerHTML = "Insert Name and Password";
        } else {
            $.ajax({
                type: "POST",
                url: "Login.aspx/UserData",
                data: "{ name: '" + name.value + "',pass: '" + pass.value + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: "true",
                cache: "false",
                success: onSucceed,
                Error: onError
            });
        }
        
    }
    function onSucceed(data, currentContext, methodName) {
        document.getElementById('name').value = document.getElementById('pass').value = "";
        if (data.d.user_id !== null) {
            //document.getElementById('txtTotal').value = results.d;
            var userData = JSON.stringify(data.d);
            localStorage.setItem('userInfo', userData);
            window.location = "Index.aspx";
        } else {
            document.getElementById('msg').innerHTML = "data not found";
        }
    }
    function onError(data, currentContext, methodName) {
        console.log(data);
    }
</script>
</body>

</html>
