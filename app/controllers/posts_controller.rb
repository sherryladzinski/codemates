class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create

	end


private
  def post
    params.require(:post).permit(:name, :contact, :about_me, :housing_preference)
  end

end
