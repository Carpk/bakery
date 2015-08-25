
@bakery = angular.module('bakery', [
  'ngMap', 'Devise', 'ngRoute', 'ngImgCrop', 'ngFileUpload'
])
.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  when('/desserts', {
    templateUrl: '../templates/desserts/index.html',
    controller: 'DessertIndexCtrl'
  }).
  when('/desserts/new', {
    templateUrl: '../templates/desserts/new.html',
    controller: 'DessertNewCtrl'
  }).
  when('/desserts/edit', {
    templateUrl: '../templates/desserts/edit.html',
    controller: 'DessertNewCtrl'
  }).
  when('/desserts/:name', {
    templateUrl: '../templates/desserts/show.html',
    controller: 'DessertShowCtrl'
  }).
  when('/desserts/:name/pictures/new', {
    templateUrl: '../templates/pictures/new.html',
    controller: 'PictureNewCtrl'
  }).
  when('/about', {
    templateUrl: '../templates/about.html',
    controller: 'HomeCtrl'
  }).
  when('/contact', {
    templateUrl: '../templates/contact.html',
    controller: 'HomeCtrl'
  }).
  when('/admins/sign_in', {
    templateUrl: '../templates/sessions/new.html'
  }).
  when('/admins/index', {
    templateUrl: '../templates/admins/index.html'
  }).
  when('/admins/console', {
    templateUrl: '../templates/sessions/console.html',
    controller: 'ConsoleCtrl'
  }).
  when('/admin_console', {
    templateUrl: '../templates/sessions/console.html',
    controller: 'ConsoleCtrl'
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
  AuthProvider.logoutPath('admins/sign_out.json');
  AuthProvider.resourceName('admin');
])
