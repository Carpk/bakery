@bakery.controller 'SessionCtrl', ['Auth', '$scope', '$location', (Auth, $scope, $location) ->
  this.credentials  = {email: '', password: ''}


  $scope.$on('devise:logout', (event, oldCurrentUser) ->
        $scope.isAuthenticated = false;
      )

  this.logOut = () ->
    console.info("Log out function selected")
    Auth.logout().then( (oldUser) ->
      alert("Succesfully logged out!")
      $location.path("/")
    (error) ->
      alert("An error occured while logging out")
      )

  this.signIn = () ->
    Auth.login(this.credentials).then( (admin) ->
      $location.path("/admin_console")
      console.info('Success in authenticating user')
    (error) ->
      console.info('Error in authenticating user')
      )

  this.tacoOut = () ->
    console.log("Hello world")
    Auth.logout().then( (oldUser) ->
      alert("Succesfully logged out!")
      $location.path("/")
    (error) ->
      alert("An error occured while logging out")
      )
]
