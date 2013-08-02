class BackboneTodo.Views.TodosIndex extends Backbone.View

#  tagName: "li"

  template: JST['todos/index']

  events:
    "change   .check"       : "toggleDone"
    "click    .delete"      : "deleteTodo"

  initialize: ->
    @collection = @options.collection
    @router = @options.router
    @collection.on "all", @render, this

  render: ->
#    console.log "render @collection " + @collection.length
    @$el.html(@template(todos: @collection.models)) #### http://qiita.com/patorash/items/af63c123e8f465a3e661
    this

  toggleDone: (e) ->
    todoId = $(e.target).data("todo_id")
    todo = @collection.get todoId
    todo.toggle()
#    alert "toggleDone"

  deleteTodo: (e) ->
    e.preventDefault()
    e.stopPropagation()
    todoId = $(e.target).data("todo_id")
    todo = @collection.get todoId
    todo.destroy()
    $(e.target).parents('li').remove()

