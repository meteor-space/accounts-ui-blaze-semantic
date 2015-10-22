
Package.describe({
  name: 'space:accounts-ui-blaze-semantic',
  summary: 'Blaze Components and Semantic-UI reference implementation of an space:accounts-ui interface.',
  version: '0.1.0',
  git: 'https://github.com/meteor-space/accounts-ui--blaze-semantic.git',
  documentation: 'README.md'
});

Package.onUse(function(api) {

  api.versionsFrom('METEOR@1.2.0.1');

  api.use([
    'coffeescript',
    'templating',
    'blaze-html-templates',
    'peerlibrary:blaze-components@0.13.0',
    'space:vo-user@0.2.0',
    'space:accounts-ui@0.2.0',
  ]);

  // CLIENT
  api.addFiles([
    'source/client/module.coffee',
    // Components
    'source/client/views/admin/admin-view.html',
    'source/client/views/admin/admin-view.coffee',
    'source/client/views/login/login-view.coffee',
    'source/client/views/login/login-view.html',
  ], 'client');

});
