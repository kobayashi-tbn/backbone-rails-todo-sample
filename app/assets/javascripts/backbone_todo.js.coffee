window.BackboneTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @todos = new BackboneTodo.Routers.Todos()
    Backbone.history.start()
    console.log 'BackboneTodo Initialized'


$(document).ready ->
  BackboneTodo.initialize()
