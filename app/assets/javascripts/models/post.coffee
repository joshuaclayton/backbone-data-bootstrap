class @App.Models.Post extends Backbone.Model
  title: ->
    @get('title')

  body: ->
    @get('body')

  domId: ->
    @get('dom_id')
