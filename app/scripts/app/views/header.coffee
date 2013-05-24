define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/header.hbs"], ($, _, Backbone, Handlebars, headerTemplate) ->
  'use strict'
  
  class HeaderView extends Backbone.View
    
    el: ".headbar"

    template: Handlebars.compile(headerTemplate)

    initialize: ->

    render: (opts) ->
      $(@el).html(@template(opts))
