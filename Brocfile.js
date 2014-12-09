/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
  sassOptions: {
    includePaths: [
      'bower_components/bootstrap-sass-official/assets/stylesheets'
    ]
  }
});

app.import('bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js');
app.import('bower_components/ember-localstorage-adapter/localstorage_adapter.js');


module.exports = app.toTree();
