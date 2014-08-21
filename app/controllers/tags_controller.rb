class PostController < ApplicationController
	def index
		@tags = Tag.all
		render :index
	end
end