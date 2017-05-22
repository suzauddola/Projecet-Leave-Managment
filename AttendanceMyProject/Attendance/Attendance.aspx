<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="Attendance.Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
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
    <form id="form1" runat="server">
    <div class="container">
        <asp:Button CssClass="btn btn-success" Height="100px" Width="100px" Text="Check In" runat="server"/>
    </div>
    </form>
</body>
</html>
