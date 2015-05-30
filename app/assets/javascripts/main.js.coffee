
@bakery = angular.module('bakery', [])

@bakery.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  otherwise({
    templateUrl: '../templates/home.html',
    controller: 'HomeCtrl'
  })
])
