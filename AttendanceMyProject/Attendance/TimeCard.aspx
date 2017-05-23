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
        <div class="container" style="margin-top: 50px">
            <div>
                <label>Name : </label>
                <label id="NameOfUser"></label>    
            </div>
            
            <div>
                <table class="table table-responsive table-bordered">
                    <thead >
                        <tr>
                            <th class="btn-primary">Date</th>
                            <th class="btn-primary">In Time</th>
                            <th class="btn-primary">Out Time</th>
                            <th class="btn-primary">Status</th>
                        </tr>
                    </thead>
                    <tbody style="color: #080808; background-color: #dff0d8; border-color: #333;" ></tbody>
                </table>
            </div>
        </div>
    </form>
</body>
    <script type="text/javascript">
        var data = localStorage.getItem('userInfo');
        var userData = JSON.parse(data);
        //document.getElementById("UserId").text = userData.emp_id;
        document.getElementById("NameOfUser").innerHTML = userData.user_name;
        /*document.getElementById("UserType").innerText = userData.user_type;
        document.getElementById("Designation").innerText = userData.emp_designation;*/

        var userData = {
            "com_code": userData.com_code,
            "emp_designation": userData.emp_designation,
            "emp_id": userData.emp_id,
            "mac_id": userData.mac_id,
            "password": "",
            "user_id": userData.user_id,
            "user_name": userData.user_name,
            "user_type": userData.user_type
        };

        var userInfo = JSON.stringify(userData);

        $.ajax({
            type: "POST",
            url: "TimeCard.aspx/UserTimeCard",
            data: "{ userInfo: '" + userInfo + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: "true",
            cache: "false",
            success: onSucceed,
            Error: onError
        });
        function onSucceed(data, currentContext, methodName) {
            console.log(data.d);
        }
        function onError(data, currentContext, methodName) {
            console.log(data);
        }

       // $(document).ready(function () {
            var json = [
                { "Date": "22 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" },
                { "Date": "23 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" },
                { "Date": "24 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" },
                { "Date": "25 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" },
                { "Date": "26 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" },
                { "Date": "27 Apr 2017", "In_Time": "00:00", "Out_Time": "00:00", "Status": "Absent" }
            ];
            var tr;
            for (var i = 0; i < json.length; i++) {
                tr = $('<tr/>');
                tr.append("<td>" + json[i].Date + "</td>");
                tr.append("<td>" + json[i].In_Time + "</td>");
                tr.append("<td>" + json[i].Out_Time + "</td>");
                tr.append("<td>" + json[i].Status + "</td>");
                $('tbody').append(tr);
            }
        //});

    </script>
</html>
