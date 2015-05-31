
@bakery.controller 'DessertShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./desserts/#{$routeParams.id}.json").success((data) ->
    $scope.dessert = data
  )
]
