UserActions = APP.Actions.UserActions

APP.Stores.UsersStore = Reflux.createStore
  listenables: [UserActions],
  onCreateUser: (user, success, error) ->
    APP.API.create 'users', { user: user },
      success: success
      error: error