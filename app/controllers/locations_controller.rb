class LocationsController < ApplicationController
	def index
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
		@posts = Post.all
		# @post = Post.find(params[:location_id])
	end
end
