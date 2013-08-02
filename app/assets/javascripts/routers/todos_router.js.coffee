class BackboneTodo.Routers.Todos extends Backbone.Router

  routes:
    "todos": "index"
    "todos/new": "new"


  initialize: ->
    @collection = new BackboneTodo.Collections.Todos()
    @collection.fetch(reset: true)
    console.log "Routers initialized"


  index: ->
    @todosIndexView or= new BackboneTodo.Views.TodosIndex
      el: $(".content "),
      collection: @collection,
      router: @

    @todosIndexView.render()

  new: ->
    @todosNewView or= new BackboneTodo.Views.TodosNew
      el: $(".content"),
      collection: @collection,
      router: @

    @todosNewView.render()
