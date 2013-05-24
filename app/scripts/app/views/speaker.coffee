define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/speaker.hbs"], ($, _, Backbone, Handlebars, speakerTemplate) ->
  'use strict'
  
  class SpeakerView extends Backbone.View
    
    el: ".content"

    template: Handlebars.compile(speakerTemplate)

    initialize: ->
      @render()

    render: ->
      $(@el).html(@template)
