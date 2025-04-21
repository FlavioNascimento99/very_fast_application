=begin

  Right, there's a breakdown about controllers with this one here.

  1. We can see inherit came from ApplicationController to our PostsController, Rails structure to deal with it.
  2. Some methods are made for pages(new, index), others for communicate Database (create).
  3. That post_params is for accept just what we want for create the entity we are "talking about" here.

=end

class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Post criado com sucesso.'
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
