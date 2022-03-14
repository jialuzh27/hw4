class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
  end

  def create
    if @current_user
      @post = Post.new(params["post"])
      @post.user_id = :user_id
      @post.save
      
      redirect_to "/places/#{@post.place.id}"
    else
      redirect_to "/places"
    end
  end

end
