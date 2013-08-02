class BackboneTodo.Models.Todo extends Backbone.Model

#  url: "todos/#{@get('id')}.json"

  defaults:
    id: null
    done: false
    content: null
    limit_on: null


  toggle: ->
    @save({done: !@get("done")})
#    alert "todo saved"

#  initialize: ->
#    @todo() if @get('id')?



