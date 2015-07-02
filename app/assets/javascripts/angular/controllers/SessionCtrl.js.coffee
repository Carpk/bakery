@bakery.controller 'SessionCtrl', ['Auth', '$scope', '$location', (Auth, $scope, $location) ->
  this.credentials  = {email: '', password: ''}



  this.logOut = () ->
    Auth.logout().then( (oldUser) ->
      console.info("Succesfully logged out!")
      $location.path("/")
    (error) ->
      console.warn("An error occured while logging out")
      )

  this.signIn = () ->
    Auth.login(this.credentials).then( (admin) ->
      $location.path("/admin_console")
      console.info('Success in authenticating user')
    (error) ->
      console.info('Error in authenticating user')
      )
]
