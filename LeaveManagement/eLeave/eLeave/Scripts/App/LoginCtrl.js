App.controller('LoginController', function ($scope, $http) {

    $scope.msg = "Enter The information properly";

    $scope.login = function () {
        $http({
            method: 'POST',
            url: 'LoginApplication',
            data: { user: $scope.name, pass: $scope.pass }
        }).then(function mySucces(response) {
            var Data = response.data;
            localStorage.setItem("EmpName", Data.EmpName);

            //var empName = localStorage.getItem("EmpName");
            //$scope.msg = "Welcome " + empName;
            $scope.name = "";
            $scope.pass = "";
            window.location.pathname = 'Home/Index';
            
        }, function myError(response) {
            $scope.myWelcome = response.statusText;
        });
    }

})