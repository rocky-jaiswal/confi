define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/about.hbs"], ($, _, Backbone, Handlebars, aboutTemplate) ->
  'use strict'
  
  class AboutView extends Backbone.View
    
    el: ".content"

    template: Handlebars.compile(aboutTemplate)

    initialize: ->
      @render()

    render: ->
      $(@el).html(@template)
      $(".jumbotron").slideDown()
      $(".jumbotron").removeClass("hidden")
