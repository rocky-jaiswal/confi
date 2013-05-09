define ["jquery", "backbone", "app/views/home"], ($, Backbone, HomeView) ->
 
  class AppRouter extends Backbone.Router
    
    routes:
      ""                    : "home"

    home: ->
      new HomeView({router: @})

