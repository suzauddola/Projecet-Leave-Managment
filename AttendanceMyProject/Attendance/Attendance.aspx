<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="Attendance.Attendance" %>

<!DOCTYPE html>

<html>
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
            <div style="position: absolute; top: 50%; left:50%; transform: translate(-50%,-50%);">
                <button type="Submit" id="toggle" class="btn btn-success btn-position" onclick="return Check();" style="height: 130px; width: 130px">Check In</button>                
            </div>
        </div>
    </form>
</body>
<script type="text/javascript">
    //document.getElementById("toggle").addClass("btn-success");
    //$('#toggle').addClass('btn-success');
    
    function Check() {
        var info = localStorage.getItem('userInfo');
        var userData = JSON.parse(info);
        $(this).toggleClass('btn btn-danger btn-position');
        
        /*var userInfo = {
            "com_code": userData.com_code,
            "emp_designation": userData.emp_designation,
            "emp_id": userData.emp_id,
            "mac_id": userData.mac_id,
            "password": "",
            "user_id": userData.user_id,
            "user_name": userData.user_name,
            "user_type": userData.user_type
        };*/
        $.ajax({
            type: "POST",
            url: "Attendance.aspx/SaveAttendance",
            data: "{ emp_id: '" + userData.emp_id + "',com_code: '" + userData.com_code + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: "true",
            cache: "false",
            success: onSucceed,
            Error: onError
        });
    }
    function onSucceed(data, currentContext, methodName) {
        if (data.d === "Success") {

            $("#toggle").text("Check Out");
            //$("#toggle").innerHTML = "Check Out";
            //$('#toggle').on('click', '.btn', function () {
            //    $(this).addClass('btn-danger').siblings().removeClass('btn-success').addClass('btn-success');
            //});
            $("#toggle").addClass("btn-danger").siblings().removeClass('btn-success').addClass('btn-danger');
        }
        console.log(data.d);
    }
    function onError(data, currentContext, methodName) {
        console.log(data);
    }

</script>
</html>
