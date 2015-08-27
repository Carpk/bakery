@bakery.controller 'DessertNewCtrl', ['$scope', '$http', ($scope, $http) ->

  $http.get('./desserts/new.json').success((data) ->
    $scope.item = data
  )

  $scope.createItem = () ->
    $http.post('./desserts', $scope.item)
    console.log($scope.item)

]
