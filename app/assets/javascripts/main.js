var app = angular.module("nwsApp", ['ngResource', 'ngRoute']);

app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    $routeProvider
      .when('/', {
        templateUrl: '../templates/starts/index.html'
        // controller: 'StartCtrl'
      })
      .when('/search', {
        templateUrl: '../templates/searches/index.html',
        controller: 'ResultsCtrl'
      })
      .when('/test', {
        templateUrl: '../templates/tests/test.html'
      })
      .otherwise({
        redirectTo: '/'
      });
    $locationProvider.html5Mode(true);
  }]);
