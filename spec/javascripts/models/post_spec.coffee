describe 'App.Models.Post', ->
  buildPost = (options) ->
    new App.Models.Post(options)

  describe '#title', ->
    it 'returns the correct value', ->
      post = buildPost title: 'Great title'
      expect(post.title()).toEqual 'Great title'

  describe '#body', ->
    it 'returns the correct value', ->
      post = buildPost body: 'Great body'
      expect(post.body()).toEqual 'Great body'

  describe '#domId', ->
    it 'returns the correct value', ->
      post = buildPost dom_id: 'post_1'
      expect(post.domId()).toEqual 'post_1'

  describe '#authorName', ->
    it 'returns the correct value', ->
      post = buildPost author_name: 'John Doe'
      expect(post.authorName()).toEqual 'John Doe'
