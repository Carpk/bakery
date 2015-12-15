@bakery.controller 'DessertNewCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->

  $http.get('./desserts/new.json').success((data) ->
    $scope.item = data
  )

  $scope.createItem = () ->
    $http.post('./desserts.json', $scope.item)
    $location.url "/desserts/#{$scope.item.name}/pictures/new"

]
