@bakery.controller 'DessertEditCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./desserts/#{$routeParams.id}/edit.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.pictures[0].picture_url
  )


  $scope.updateItem = () ->
    $http.post('./desserts.json', $scope.item)
    $location.url "/desserts/#{$scope.item.name}/pictures/new"

]
