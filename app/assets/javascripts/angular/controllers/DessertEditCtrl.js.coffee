@bakery.controller 'DessertEditCtrl', ['$scope', '$http', '$location', '$routeParams', ($scope, $http, $location, $routeParams) ->
  $http.get("./desserts/#{$routeParams.id}/edit.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.pictures[0].picture_url
  )


  $scope.updateItem = () ->
    $http.patch("./desserts/#{$scope.dessert.id}.json", $scope.dessert)
    # $location.url "/admin_console"

]
