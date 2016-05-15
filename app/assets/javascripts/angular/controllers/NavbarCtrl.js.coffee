@bakery.controller 'NavbarCtrl', ['$scope', '$location', ($scope, $location) ->

  $scope.viewHome = () ->
    $location.url "/"

  $scope.viewDesserts = () ->
    $location.url "/desserts"

  $scope.viewAbout = () ->
    $location.url "/about"

  $scope.viewContact = () ->
    $location.url "/contact"
]

