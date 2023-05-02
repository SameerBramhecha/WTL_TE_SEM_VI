var app = angular.module("myApp", []);

app.service("UserService", function () {
    var users = [{
        'fname': 'Sameer',
        'lname': 'Bramhecha',
        'uname': 'samya',
        'password': 'sameer123'
    }];

    this.save = function (user) {
        users.push(user);
    };

    this.get = function (uname) {
        for (var i in users) {
            if (users[i].uname == uname) {
                return users[i];
            }
        }
    };

    this.list = function () {
        return users;
    };
});

app.controller("frmController", function ($scope, UserService) {
    console.clear();

    $scope.ifSearchuser = false;
    $scope.users = UserService.list();

    $scope.saveUser = function () {
        console.log($scope.newuser);
        if ($scope.newuser == null || $scope.newuser == angular.undefined) {
            return;
        }
        UserService.save($scope.newUser);
        $scope.newuser = {};
        alert("Registered User Successfully");
    }
    $scope.verifyUser = function () {
        if ($scope.newuser == null || $scope.newuser == angular.undefined) {
            return;
        }
        $scope.user = UserService.get($scope.newuser.uname);
        if ($scope.user.password == $scope.newuser.password) {
            alert("Login Successfull");
        }
        else {
            alert("Login Failure");
        }
    }
});
