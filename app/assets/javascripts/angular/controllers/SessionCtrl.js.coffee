@bakery.controller 'SessionCtrl', ['Auth', '$scope', '$location', (Auth, $scope, $location) ->
  admin_credentials  = { email: '', password: ''}

  $scope.logOut = () ->
    Auth.logout().then( (oldUser) ->
      console.info("Succesfully logged out!")
      $location.path("/")
    (error) ->
      console.warn("An error occured while logging out")
      )

  $scope.signIn = (admin_credentials) ->
    console.info("sign in button has been called")
    Auth.login(admin_credentials).then( (admin) ->
      $location.path("/admin_console")
      console.info('Success in authenticating user')
    (error) ->
      console.info('Error in authenticating user')
      )

  adminId = 1

  $scope.createDessert = () ->
    $location.url "/admins/#{adminId}/desserts/new"

  $scope.editCategories = () ->
    $location.url "/admins/#{adminId}/categories"

  $scope.manageDesserts = () ->
    $location.url "/admins/#{adminId}/console"
]
