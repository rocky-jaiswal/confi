define ["jquery", "backbone", "app/views/home", "app/views/speaker", "app/views/header"], ($, Backbone, HomeView, SpeakerView, HeaderView) ->
 
  class AppRouter extends Backbone.Router
    
    routes:
      ""                    : "home"
      "speakers"            : "speakers"

    home: ->
      new HomeView()
      @header = new HeaderView({router: @})
      @header.render({home :true})

    speakers: ->
      new SpeakerView()
      if @header
        @header.render({speakers: true})
      else
        @header = new HeaderView({router: @})
        @header.render({speakers :true})


