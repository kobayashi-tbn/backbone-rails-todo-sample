class BackboneTodo.Collections.Todos extends Backbone.Collection

  model: BackboneTodo.Models.Todo
  url: "/todos"

#  localStorage: new Store("todos")

#  完了しているTODOを抽出
#  done: ->
#    this.filter = (todo) ->
#      todo.get('done')
#
#  remaining: ->
#    this.without.apply(this, this.done())

#  initialize: ->
#    @todos = BackboneTodo.Collections.Todos.fetch()
