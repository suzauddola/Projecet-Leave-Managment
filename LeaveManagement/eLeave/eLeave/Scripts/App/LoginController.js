App.controller('LoginController', function ($scope, $http) {

    $scope.login = function () {
        $http({
            method: 'POST',
            url: 'LoginApplication',
            data: { user: $scope.name, pass: $scope.pass }
        }).then(function mySucces(response) {
            $scope.myWelcome = response.data;
        }, function myError(response) {
            $scope.myWelcome = response.statusText;
        });
    }
})