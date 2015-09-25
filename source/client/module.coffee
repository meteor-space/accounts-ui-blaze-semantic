class Space.accountsUiBlazeSemantic extends Space.ui.Module

  @publish this, 'Space.accountsUiBlazeSemantic'

  RequiredModules: [
    'Space.ui'
    'Space.accountsUi'
  ]

  Components: [
    'Space.accountsUi.AdminView'
    'Space.accountsUi.LoginView'
  ]
