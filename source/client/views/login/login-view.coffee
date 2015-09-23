class Space.accountsUi.LoginView extends Space.ui.BlazeComponent

  @register 'space_accounts_ui_login_view'

  ENTER_KEY: 13

  Dependencies: {
    currentUserStore: 'Space.accountsUi.CurrentUserStore'
  }

  loginError: -> @currentUserStore.get 'loginError'

  events: -> [
    'click .submit': @login
    'keyup': @handleKeyup
  ]

  getCredentials: -> {
    user: @$('.login-view .user').val()
    password: @$('.login-view .password').val()
  }

  login: -> @publish new Space.accountsUi.LoginRequested(@getCredentials())

  handleKeyup: (event) =>
    if (event.keyCode is @ENTER_KEY)
      @login()
