@bakery.controller 'AdminDessertEditCtrl', ['$scope', '$http', '$location', '$routeParams', ($scope, $http, $location, $routeParams) ->

  adminId = 1

  $http.get("./admins/#{adminId}/desserts/#{$routeParams.id}/edit.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.main_pic
  )

  $scope.deletePicture = (picId) ->
    if confirm("You are about to permanently delete this picture") == true
      $http.delete("./desserts/#{$scope.dessert.id}/pictures/#{picId}.json").success((data) ->
        location.reload(true)
      )

  $scope.setDefault = (picId) ->
    $http.patch("./desserts/#{$scope.dessert.id}/pictures/#{picId}.json", $scope.dessert)
    location.reload(true)

  $scope.viewDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}"

  $scope.updateItem = () ->
    $http.patch("./desserts/#{$scope.dessert.id}.json", $scope.dessert)
    $location.url "/admin_console"

  $scope.uploadPicture = () ->
    $location.url "/admin/#{adminId}/desserts/#{$scope.dessert.name}/pictures/new"

]
