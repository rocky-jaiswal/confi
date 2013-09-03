define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/contact.hbs"], ($, _, Backbone, Handlebars, contactTemplate) ->
  'use strict'
  
  class ContactView extends Backbone.View
    
    el: ".content"

    template: Handlebars.compile(contactTemplate)

    initialize: ->
      @render()

    render: ->
      $(@el).html(@template)
      $(".jumbotron").slideDown()
      $(".jumbotron").removeClass("hidden")
