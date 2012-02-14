define ['views/collection_view', 'views/post_view', 'text!templates/posts.hbs'], (CollectionView, PostView, template) ->

  'use strict'

  class PostsView extends CollectionView

    # This is a workaround. In the end you might want to used precompiled templates.
    @template: template

    tagName: 'div' # This is not directly a list but contains a list
    id: 'posts'

    containerSelector: '#content-container'
    listSelector: 'ol' # Append the item views to this element
    fallbackSelector: '.fallback'

    # The most important method a class inheriting from CollectionView must overwrite.
    getView: (item) ->
      # Instantiate an item view
      new PostView model: item
