
@bakery.controller 'DessertIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.desserts = [{id: 1, name: "it"}, {id: 4, name: "failed"}]
  $http.get('./desserts.json').success((data) ->
    $scope.desserts = [{id: 1, name: "json"}, {id: 4, name: "success"}]
  )
]
