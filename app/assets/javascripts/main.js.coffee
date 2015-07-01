
@bakery = angular.module('bakery', [
  'ngMap', 'Devise'
])
.config(['$routeProvider', ($routeProvider) ->
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
  when('/sign_in', {
    templateUrl: '../templates/sessions/new.html'
  }).
  when('/admin_console', {
    templateUrl: '../templates/sessions/console.html',
    controller: 'SessionCtrl'
  }).
  when('/sign_up', {
    templateUrl: 'sign_up.html',
    controller: 'HomeCtrl'
  }).
  otherwise({
    templateUrl: '../templates/home.html',
    controller: 'HomeCtrl'
  })
])
.config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.withCredentials = true;
])
.config(['AuthProvider', (AuthProvider) ->
  AuthProvider.loginPath('sign_in.json');

  AuthProvider.logoutMethod('POST');
  AuthProvider.logoutPath('sign_out.json');

  AuthProvider.resourceName('admin');
])
