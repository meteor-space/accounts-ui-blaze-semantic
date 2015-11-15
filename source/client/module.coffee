class Space.accountsUiBlazeSemantic extends Space.flux.Module

  @publish this, 'Space.accountsUiBlazeSemantic'

  requiredModules: [
    'Space.flux'
    'Space.accountsUi'
  ]

  components: [
    'Space.accountsUi.AdminView'
    'Space.accountsUi.LoginView'
  ]
