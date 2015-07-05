@bakery.controller 'AdminCtrl', ['$scope', '$http', ($scope, $http) ->
  console.log("admin controller has been loaded")
  $scope.files = {}

  $scope.performUpload = false;
]
