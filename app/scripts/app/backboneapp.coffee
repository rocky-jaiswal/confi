define ["backbone", "./router/router"], (Backbone, AppRouter) ->
  'use strict'

  class BackboneApp
    
    constructor: ->
      router = new AppRouter()
      Backbone.history.start()
