define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/home.hbs"], ($, _, Backbone, Handlebars, homeTemplate) ->
  'use strict'
  
  class HomeView extends Backbone.View
    
    el: ".content"

    template: Handlebars.compile(homeTemplate)

    initialize: ->
      @render()

    render: ->
      $(@el).html(@template)
      $(".jumbotron").slideDown()
      $(".jumbotron").removeClass("hidden")
