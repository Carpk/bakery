@bakery.controller 'SessionNewCtrl', ['Auth', '$scope', '$location', (Auth, $scope, $location) ->
  this.credentials  = {username: '', password: ''}

  this.signIn = (signIn) ->
    console.log(this)
    Auth.login(this.credentials).then( (admin) ->
      $location.path("/")
      alert('Successfully signed in!')
      (error) ->
      console.info('Error in authenticating user')
      alert('Error signing in admin')
      )
]
