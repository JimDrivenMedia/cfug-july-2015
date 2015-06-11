<!doctype html>
<html>
<head>
  <meta charset="utf-8">
 <title>CFUG June 2015</title>
    <meta name="viewport" content="width=device-width">

     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>

</head>
<body ng-app="MyApp">
  <h1>Our list of employees</h1>
  <div ng-controller="PostsCtrl">
    <ul  id="employeeList">
      <li ng-repeat="post in posts">{{post.firstname}} {{post.lastname}} {{post.title}}</li>
    </ul>
  </div>
        <script>
         var app = angular.module("MyApp", []);
            app.controller("PostsCtrl", function($scope, $http) {
              $http.get('/cfug/ajax/getEmployees.cfm').
                success(function(data, status, headers, config) {
                  $scope.posts = data;
                }).
                error(function(data, status, headers, config) {
                });
            });
        </script>
    </body>
</html>