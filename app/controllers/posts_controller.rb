class PostsController < ApplicationController
	before_action :authenticate_user!
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
		if current_user
    		@post = Post.new(post_params)
    		@post.user_id = @current_user.id
    		@post.location_id = params[:location_id].to_i
      			if @post.save
        			redirect_to location_path(@post.location_id)
      			else
        			flash[:notice]="You must fill in the information"
        			redirect_to(:back)
      			end
    	else
    		redirect_to root_path
    	end
	end


private
  def post_params
    params.require(:post).permit(:name, :contact, :about_me, :housing_preference)
  end

end
