class BackboneTodo.Views.TodosNew extends Backbone.View

  template: JST["todos/new"]

  events:
    "click    #save_todo": "saveTodo"

  render: ->
    @$el.html(@template())
    @

  initialize: ->
    @collection = @options.collection
#    alert "initialize Views.TodosNew : el =" + @el.tagName
#    @collection.on "reset", @render, this
#    @listenTo @collection, "reset", @render, this
#    @collection.bind "change", @render, this
#    @collection.model.bind "destroy", @render, this
    @router = @options.router


  saveTodo: (e) ->
    attributes =
      content: @$("#todo_content").val()
      limit_on: @$("#todo_limit_on").val()
    if @collection.create attributes
      @collection.fetch(reset: true)
      @router.navigate("#todos", trigger: true)
    else
      alert "There were errors!"
