class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index
	end

	def create
		# gets data from form
		new_post = params[:post].permit(:title, :description, :author)
		new_tag = params[:tag].permit(:name)
		# create rows in the database
		p = Post.create(new_post)
		t = Tag.create(new_tag)
		Posttag.create(:post_id => p.id, :tag_id => t.id )
		redirect_to "/posts"
	end

    def show
    	id = params[:id]
    	@post = Post.find(id)
    end

end