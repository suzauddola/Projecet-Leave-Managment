App.controller('LoginController', function ($scope, $http) {

    //$scope.msg = "Enter The information properly";
    $scope.msg = "";

    $scope.login = function () {
        $http({
            method: 'POST',
            url: 'LoginApplication',
            data: { user: $scope.name, pass: $scope.pass }
        }).then(function mySucces(response) {

            var responseData = response.data;
            localStorage.setItem("EmpName", responseData.EmpName);

            //var empName = localStorage.getItem("EmpName");
            //$scope.msg = "Welcome " + empName;

            $scope.name = "";
            $scope.pass = "";

            if (responseData.IsLogin === true)
                window.location.pathname = 'Home/Index';
            else {
                $scope.msg = responseData.msg;
            }
            
        }, function myError(response) {
            $scope.myWelcome = response.statusText;
        });
    }

})