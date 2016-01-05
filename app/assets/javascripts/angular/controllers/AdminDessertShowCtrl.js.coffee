@bakery.controller 'AdminDessertShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->

  adminId = 1

  $http.get("./admins/#{adminId}/desserts/#{$routeParams.name}.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.main_pic
  )

  $scope.setImage = (imageUrl) ->
    $scope.mainImageUrl = imageUrl
]
