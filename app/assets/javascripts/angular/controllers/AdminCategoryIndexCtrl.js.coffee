@bakery.controller 'AdminCategoryIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.categoryList = []

  adminId = 1

  $http.get("./admins/#{adminId}/categories.json").success((data) ->
    $scope.categoryList = data
  )

  $scope.viewDessert = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}"

  $scope.editCategory = (id) ->
    $location.url "/admins/#{adminId}/desserts/#{id}/edit"

  $scope.updateItem = (id) ->
    $http.patch("./categories/#{$scope.category.id}.json", $scope.category)
    $location.url "/admin_console"

  $scope.deleteCategory = (id) ->
    if confirm("You are about to permanently delete this item") == true
      $http.delete("./admins/#{adminId}/categories/#{id}.json").success((data) ->
        location.reload(true)
      )
]

