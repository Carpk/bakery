
@bakery = angular.module('bakery', [])

@bakery.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  when('/desserts', {
    templateUrl: '../templates/desserts/index.html',
    controller: 'DessertIndexCtrl'
  }).
  when('/desserts/:name', {
    templateUrl: '../templates/desserts/show.html',
    controller: 'DessertShowCtrl'
  }).
  when('/about', {
    templateUrl: '../templates/about.html',
    controller: 'HomeCtrl'
  }).
  when('/contact', {
    templateUrl: '../templates/contact.html',
    controller: 'HomeCtrl'
  }).
  otherwise({
    templateUrl: '../templates/home.html',
    controller: 'HomeCtrl'
  })
])
