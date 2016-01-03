@bakery.controller 'DessertShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./desserts/#{$routeParams.name}.json").success((data) ->
    $scope.dessert = data
    $scope.mainImageUrl = data.main_pic
  )

  $scope.setImage = (imageUrl) ->
    $scope.mainImageUrl = imageUrl
]
