class PostsController < ApplicationController
  def index

  end

  def new

  end

  def create
  	@post = Post.new(post_params)
	@post.save
	redirect_to @post
  end

  private
  	def post_params
  		params.require(:post).permit(:title, :text)
  	end

  def edit

  end

  def show
  	@post = Post.find(params[:id])
  end


  def delete

  end
end
