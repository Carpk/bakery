@bakery.controller 'AdminDessertNewCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->

  adminId = 1

  $http.get('./desserts/new.json').success((data) ->
    $scope.item = data
  )

  $scope.createItem = () ->
    $http.post('./desserts.json', $scope.item)
    $location.url "/admin/#{adminId}/desserts/#{$scope.item.name}/pictures/new"

]
