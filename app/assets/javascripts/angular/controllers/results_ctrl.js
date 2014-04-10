app.controller('ResultsCtrl', ['$scope', 'Result', '$http', '$filter', '$location', '$route', function ($scope, Result, $http, $filter, $location, $route) {
	$scope.searchitems = Result.result();

}]);