define ["jquery", "backbone", "app/views/about", "app/views/contact", "app/views/home"], ($, Backbone, AboutView, ContactView, HomeView) ->
 
  class AppRouter extends Backbone.Router
    
    routes:
      ""         : "home"
      "about"    : "about"
      "contact"  : "contact"
      "home"     : "home"

    home: ->
      new HomeView()

    about: ->
      new AboutView()

    contact: ->
      new ContactView()
