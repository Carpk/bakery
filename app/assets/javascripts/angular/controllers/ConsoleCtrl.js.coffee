@bakery.controller 'ConsoleCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.dessertList = []
  $http.get("./admins.json").success((data) ->
    $scope.dessertList = data
  )

  $scope.viewDessert = (id) ->
    $location.url "/desserts/#{id}"

  $scope.editDessert = (id) ->
    $location.url "/desserts/#{id}"

  $scope.deleteDessert = (id) ->
    $location.url "/desserts/#{id}"
]
