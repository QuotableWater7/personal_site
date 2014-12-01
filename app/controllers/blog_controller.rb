class BlogController < ApplicationController

  def index
    @query_string = request.query_string
  end

end
