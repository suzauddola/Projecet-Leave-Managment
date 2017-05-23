<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeCard.aspx.cs" Inherits="Attendance.TimeCard" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Attendance - Time Card</title>
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
            <label Text="text" id="NameOfUser"></label>
            <div>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>In Time</th>
                            <th>Out Time</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>22 Apr 2017</td>
                            <td>00:00</td>
                            <td>00:00</td>
                            <td>Absent</td>
                        </tr>
                    </tbody>

                </table>
            </div>
        </div>
    </form>
</body>
    <script type="text/javascript">
        var data = localStorage.getItem('userInfo');
        var userData = JSON.parse(data);
        document.getElementById("UserId").innerText = userData.emp_id;
        document.getElementById("NameOfUser").innerText = userData.user_name;
        document.getElementById("UserType").innerText = userData.user_type;
        document.getElementById("Designation").innerText = userData.emp_designation;

    </script>
</html>
