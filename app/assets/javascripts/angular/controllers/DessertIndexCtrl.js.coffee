@bakery.controller 'DessertIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.desserts = []
  $http.get('./desserts.json').success((data) ->
    $scope.desserts = data
  )

  $scope.viewDessert = (id) ->
    $location.url "/desserts/#{id}"
]
