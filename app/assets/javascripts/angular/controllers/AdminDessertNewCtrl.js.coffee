@bakery.controller 'AdminDessertNewCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->

  adminId = 1

  $http.get("./admins/#{adminId}/desserts/new.json").success((data) ->
    $scope.item = data
  )

  $scope.createItem = () ->
    $http.post('./desserts.json', $scope.item)
    $location.url "/admins/#{adminId}/desserts/#{$scope.item.name}/pictures/new"

]
