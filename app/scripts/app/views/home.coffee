define ["jquery", "underscore", "backbone", "handlebars", "text!../templates/home.hbs"], ($, _, Backbone, Handlebars, homeTemplate) ->
  'use strict'
  
  class HomeView extends Backbone.View
    
    el: ".content"

    #events:
      #"submit #login-form":  "handleSubmit"

    template: Handlebars.compile(homeTemplate)

    initialize: ->
      @render()

    render: ->
      $(@el).html(@template)

    #handleSubmit: (e) ->
      #e.preventDefault()
      #$("#login-form").ajaxSubmit({success: @handleResponse, error: @handleError})

    #handleResponse: (response, status, xhr, form) =>
      #localStorage.setItem("user", JSON.stringify response)
      #@options.router.navigate("add", {trigger: true})

    #handleError: ->
      #$(".alert").html("Error while logging in. Invalid credentials.")
      #$(".alert").removeClass("hidden")