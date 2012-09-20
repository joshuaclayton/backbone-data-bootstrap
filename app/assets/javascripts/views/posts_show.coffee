class @App.Views.PostsShow extends Support.CompositeView
  render: ->
    @$el.find('.message').remove()

    @options.posts.each (post) =>
      view = new App.Views.PostShow(model: post)
      @renderChild view
      @$el.append view.el

    @
