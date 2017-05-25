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
    <form id="form1">
        <div class="container" style="margin-top: 50px">
            <div class="modal-header">
                <div class="row" style="display: flex">
                    <label class="col-md-5" style="text-align: right">Name : </label>
                    <label class="col-md-3" id="NameOfUser"></label>
                </div>
                <div class="row" style="display: flex">
                    <label class="col-md-5" style="text-align: right">Month : </label>
                    <select id="Month" class="btn col-md-3">
                        <option value="January">January</option>
                        <option value="February">February</option>
                        <option value="March">March</option>
                        <option value="April">April</option>
                        <option value="May" selected="selected">May</option>
                        <option value="June">June</option>
                        <option value="July">July</option>
                        <option value="August">August</option>
                        <option value="September">September</option>
                        <option value="October">October</option>
                        <option value="November">November</option>
                        <option value="December">December</option>
                    </select>
                </div>
                <div class="row" style="text-align: right">
                    <button type="button" onclick="return FilterByMonth();" class="btn btn-primary" OnClientClick="return false;">Preview</button>
                </div>
            </div>

            <div>
                <table class="table table-responsive table-bordered">
                    <thead>
                        <tr>
                            <th class="btn-primary">Date</th>
                            <th class="btn-primary">In Time</th>
                            <th class="btn-primary">Out Time</th>
                            <th class="btn-primary">Status</th>
                        </tr>
                    </thead>
                    <tbody style="color: #080808; background-color: #dff0d8; border-color: #333;"></tbody>
                </table>
            </div>
        </div>
    </form>
</body>
<script type="text/javascript">
    
    var data = localStorage.getItem('userInfo');
    var userData = JSON.parse(data);
    document.getElementById("NameOfUser").innerHTML = userData.user_name;
    
    function FilterByMonth() {

        var cMonth = document.getElementById("Month");

        var data = localStorage.getItem('userInfo');
        var userData = JSON.parse(data);
        

        var userJson = {
            "com_code": userData.com_code,
            "emp_designation": userData.emp_designation,
            "emp_id": userData.emp_id,
            "mac_id": userData.mac_id,
            "password": "",
            "user_id": userData.user_id,
            "user_name": userData.user_name,
            "user_type": userData.user_type
        };

        var userInfo = JSON.stringify(userJson);

        $.ajax({
            type: "POST",
            url: "TimeCard.aspx/UserTimeCard",
            data: "{ userInfo: '" + userInfo + "',cMonth: '" + cMonth.value + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: "true",
            cache: "false",
            success: onSucceed,
            Error: onError
        });
    }
    function onSucceed(data, currentContext, methodName) {
        //console.log(data.d);
        //localStorage.setItem("trInfo", data.d);
        //var trData = JSON.stringify(data.d);
        //localStorage.setItem('trInfo', userData);
        var json = data.d;
        var tr;
        $("tbody").html("");
        for (var i = 0; i < json.length; i++) {
            tr = $('<tr/>');
            tr.append("<td>" + json[i].Date + "</td>");
            tr.append("<td>" + json[i].InTime + "</td>");
            tr.append("<td>" + json[i].OutTime + "</td>");
            tr.append("<td>" + json[i].Status + "</td>");
            $('tbody').append(tr);
        }
        //trInfo = tr;
    }
    function onError(data, currentContext, methodName) {
        console.log(data);
    }

</script>
</html>
