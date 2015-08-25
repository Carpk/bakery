
@bakery.controller 'DessertNewCtrl', ['$scope', '$http', ($scope, $http) ->


  $http.get('./desserts/new.json').success((data) ->
      $scope.item = data


  $scope.createItem = () ->
    console.log($scope.item)

]
