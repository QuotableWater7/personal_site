class BlogController < ApplicationController

  layout 'blog_layout'

  def index
    query_string = request.query_string

    if query_string.empty?
      render :index
    else
      @disqus = true
      post = (query_string.match /post=(.*)/).captures[0]
      @return_link = true
      render post
    end
  end



  def blah=(value)
    @blah = value
  end

  def blah
    @blah
  end

end
