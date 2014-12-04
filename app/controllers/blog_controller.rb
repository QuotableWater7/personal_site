class BlogController < ApplicationController

  layout 'blog_layout'

  def index
    query_string = request.query_string
    p query_string

    if query_string.empty?
      render :index
    else
      post = (query_string.match /post=(.*)/).captures[0]
      @return_link = true
      render post
    end
  end

end
