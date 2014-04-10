app.factory('Result', ['$resource', '$location', '$routeParams', function($resource, $location, $routeParams) {
  // temporary hard-coded solution
  /* Search Items
   * @params_direct: picture, name, venue_name, address, distance, type, max. capacity, price table,
   *      calculated price, calculated duration
   * @params_indirect: workspace_description, workspace_contact, workspace_amenities, workspace_location,
   *           workspace_reviews
   */
  var searchResource = $resource('/api/v1/searches?city=:city&lat=:lat&lng=:lng', {city: $routeParams['city'], lat: $routeParams['lat'], lng: $routeParams['lng']});

  var Result = {
    result: function() {
      return searchResource.query();
    }
  };

  return Result;
}]);