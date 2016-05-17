
@bakery = angular.module('bakery', [
  'ngMap','Devise', 'ngRoute', 'ngImgCrop', 'bakeryAnimations', 'ngFileUpload'
])
.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  when('/about', {
    templateUrl: '../templates/about.html'
  }).
  when('/contact', {
    templateUrl: '../templates/contact.html'
  }).
  when('/desserts', {
    templateUrl: '../templates/desserts/index.html',
    controller: 'DessertIndexCtrl'
  }).
  when('/desserts/:name', {
    templateUrl: '../templates/desserts/show.html',
    controller: 'DessertShowCtrl'
  }).
  when('/admin_console', {
    templateUrl: '../templates/admins/desserts/index.html',
    controller: 'AdminDessertIndexCtrl'
  }).
  when('/admins/:admin_id/console', {
    templateUrl: '../templates/admins/desserts/index.html',
    controller: 'AdminDessertIndexCtrl'
  }).
  when('/admins/:admin_id/desserts/new', {
    templateUrl: '../templates/admins/desserts/new.html',
    controller: 'AdminDessertNewCtrl'
  }).
  when('/admins/:admin_id/desserts/:name', {
    templateUrl: '../templates/admins/desserts/show.html',
    controller: 'AdminDessertShowCtrl'
  }).
  when('/admins/:admin_id/desserts/:id/edit', {
    templateUrl: '../templates/admins/desserts/edit.html',
    controller: 'AdminDessertEditCtrl'
  }).
  when('/admins/:admin_id/desserts/:name/pictures/new', {
    templateUrl: '../templates/admins/desserts/pictures/new.html',
    controller: 'AdminDessertPictureNewCtrl'
  }).
  when('/admins/:admin_id/categories', {
    templateUrl: '../templates/admins/categories/index.html',
    controller: 'AdminCategoryIndexCtrl'
  }).
  when('/admins/sign_in', {
    templateUrl: '../templates/sessions/new.html'
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
