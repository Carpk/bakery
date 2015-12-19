@bakery.controller 'DessertEditCtrl', ['$scope', '$http', '$location', '$routeParams', ($scope, $http, $location, $routeParams) ->
  $http.get("./desserts/#{$routeParams.id}/edit.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.pictures[0].picture_url
  )

  $scope.deletePicture = (id) ->
    if confirm("You are about to permanently delete this picture") == true
      $http.delete("./desserts/#{$scope.dessert.id}/pictures/#{id}.json").success((data) ->
        location.reload(true)
      )

  $scope.updateItem = () ->
    $http.patch("./desserts/#{$scope.dessert.id}.json", $scope.dessert)
    $location.url "/admin_console"

  $scope.uploadPicture = () ->
    $location.url "/desserts/#{$scope.dessert.name}/pictures/new"

]
