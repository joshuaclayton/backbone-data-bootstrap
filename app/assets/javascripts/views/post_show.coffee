class @App.Views.PostShow extends Backbone.View
  tagName: 'article'

  render: ->
    @$el.template 'posts/show'
    @$el.attr id: @model.domId()
    @$el.find('h2').text @model.title()
    @$el.find('div').text @model.body()
    @
