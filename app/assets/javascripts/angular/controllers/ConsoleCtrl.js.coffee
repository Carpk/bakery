@bakery.controller 'ConsoleCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.dessertList = []
  $http.get("./admins.json").success((data) ->
    $scope.dessertList = data
  )

  $scope.viewDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}"

  $scope.editDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}/edit"

  $scope.deleteDessert = (id) ->
    $http.delete("./admins/#{adminId}/desserts/#{id}.json").success((data) ->
      console.log(data)
    )

  # score = (this.created_at - toadys'date) / this.views
]
