class BlogController < ApplicationController

  layout 'blog_layout'

  def index
    query_string = request.query_string

    if query_string.empty?
      render :index
    else
      @disqus = true
      @return_link = true
      post = (query_string.match /post=(\w+)/).captures[0]
      lang = (query_string.match /lang=(\w+)/).captures[0]
      render "blog/#{lang}/#{post}"
    end
  end



  def blah=(value)
    @blah = value
  end

  def blah
    @blah
  end

end
