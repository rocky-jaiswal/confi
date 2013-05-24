#global require
"use strict"

require.config
  shim:
    underscore:
      exports: "_"

    backbone:
      deps: ["underscore", "jquery"]
      exports: "Backbone"

    bootstrap:
      deps: ["jquery"]
      exports: "Bootstrap"

    handlebars:
      exports: "Handlebars"

  paths:
    jquery: "../bower_components/jquery/jquery"
    jquery_form: "../bower_components/jquery-form/jquery.form"
    backbone: "../bower_components/backbone-amd/backbone"
    underscore: "../bower_components/underscore-amd/underscore"
    bootstrap: "vendor/bootstrap"
    text: "../bower_components/requirejs-text/text"
    handlebars: "../bower_components/handlebars.js/dist/handlebars"

require ["backbone", "bootstrap", "app/router/router"], (Backbone, Bootstrap, AppRouter) ->
  router = new AppRouter()
  Backbone.history.start()