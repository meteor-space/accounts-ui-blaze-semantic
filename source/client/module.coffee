class Space.accountsUiSemantic extends Space.ui.Module

  @publish this, 'Space.accountsUiSemantic'

  RequiredModules: [
    'Space.ui'
    'Space.accountsUi'
  ]

  Components: [
    'Space.accountsUi.AdminView'
    'Space.accountsUi.LoginView'
  ]
