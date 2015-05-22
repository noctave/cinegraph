var userList = [];
var controllers = angular.module('controllers',[]);
controllers.controller('addController', ['$scope', function($scope) {
        $scope.submitFrom = function(form, user) {
            if (form.$valid) {
                userList.push(user);
            }
        };
    }]);