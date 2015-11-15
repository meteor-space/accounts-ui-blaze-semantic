class Space.accountsUi.LoginView extends Space.flux.BlazeComponent

  @register 'space_accounts_ui_login_view'

  ENTER_KEY: 13

  dependencies: {
    currentUserStore: 'Space.accountsUi.CurrentUserStore'
  }

  loginError: -> @currentUserStore.loginError

  events: -> [
    'click .submit': @login
    'keyup': @handleKeyup
  ]

  getCredentials: -> {
    user: @$('.login-view .user').val()
    password: new Password @$('.login-view .password').val()
  }

  login: -> @publish new Space.accountsUi.LoginRequested(@getCredentials())

  handleKeyup: (event) => @login() if (event.keyCode is @ENTER_KEY)
