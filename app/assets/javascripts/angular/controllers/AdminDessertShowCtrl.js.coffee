@bakery.controller 'AdminDessertShowCtrl', ['$scope', '$location', '$http', '$routeParams', ($scope, $location, $http, $routeParams) ->

  adminId = 1

  $http.get("./admins/#{adminId}/desserts/#{$routeParams.name}.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.main_pic
  )

  $scope.editDessert = (id) ->
      $location.url "/admins/#{adminId}/desserts/#{id}/edit"

  $scope.setImage = (imageUrl) ->
    $scope.mainImageUrl = imageUrl
]
