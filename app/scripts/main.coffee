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
      exports: "jquery"

    handlebars:
      exports: "Handlebars"

  paths:
    jquery: "../bower_components/jquery/jquery"
    backbone: "../bower_components/backbone/backbone"
    underscore: "../bower_components/underscore/underscore"
    bootstrap: "vendor/bootstrap"
    handlebars: "../bower_components/handlebars/handlebars"
    text: "../bower_components/requirejs-text/text"

require ["backbone", "app/router/router"], (Backbone, AppRouter) ->
  router = new AppRouter()
  Backbone.history.start()