class Space.accountsUiBlazeSemantic extends Space.flux.Module

  @publish this, 'Space.accountsUiBlazeSemantic'

  RequiredModules: [
    'Space.flux'
    'Space.accountsUi'
  ]

  Components: [
    'Space.accountsUi.AdminView'
    'Space.accountsUi.LoginView'
  ]
