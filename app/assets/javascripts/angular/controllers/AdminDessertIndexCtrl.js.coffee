@bakery.controller 'AdminDessertIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.dessertList = []

  adminId = 1

  $http.get("./admins/#{adminId}/desserts.json").success((data) ->
    $scope.dessertList = data
  )

  $scope.viewDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}"

  $scope.editDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}/edit"

  $scope.deleteDessert = (id) ->
    if confirm("You are about to permanently delete this item") == true
      $http.delete("./admins/#{adminId}/desserts/#{id}.json").success((data) ->
        location.reload(true)
      )

]
