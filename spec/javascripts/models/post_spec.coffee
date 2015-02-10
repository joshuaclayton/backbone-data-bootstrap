#= require spec_helper
#
describe "App.Models.Post", ->
  buildPost = (options) ->
    new App.Models.Post(options)

  describe '#title', ->
    it 'returns the correct value', ->
      post = buildPost title: 'Great title'
      expect(post.title()).to.equal 'Great title'

  describe '#body', ->
    it 'returns the correct value', ->
      post = buildPost body: 'Great body'
      expect(post.body()).to.equal 'Great body'

  describe '#domId', ->
    it 'returns the correct value', ->
      post = buildPost dom_id: 'post_1'
      expect(post.domId()).to.equal 'post_1'

  describe '#authorName', ->
    it 'returns the correct value', ->
      post = buildPost author_name: 'John Doe'
      expect(post.authorName()).to.equal 'John Doe'
