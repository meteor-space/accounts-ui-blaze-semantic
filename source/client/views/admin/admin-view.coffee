class Space.accountsUi.AdminView extends Space.flux.BlazeComponent

  @register 'space_accounts_ui_admin_view'

  ENTER_KEY: 13

  dependencies: {
    usersStore: 'Space.accountsUi.UsersStore'
  }

  accounts: -> @usersStore.accounts()

  events: -> [
    'click .submit': @requestAccountRegistration
    'keyup': @handleKeyup
  ]

  getCredentials: -> {
    username: new Username @$('.create-new .username').val()
    email: new EmailAddress @$('.create-new .email').val()
    password: new Password @$('.create-new .password').val()
  }

  requestAccountRegistration: ->
    @publish new Space.accountsUi.AccountCreationRequested(@getCredentials())

  handleKeyup: (event) =>
    @requestAccountRegistration() if (event.keyCode is @ENTER_KEY)
