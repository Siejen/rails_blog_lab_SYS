class TagsController < ApplicationController
	def index
		@tags = Tag.all
		render :index
	end

    def show
    	# currently renders index, but, this does NOT work
    	# because we don't have a list of tags to pass to the index
    	# 
    	# we would need to:
    	# (A) find matching rows in posttag corresponding to the tag.id
    	# (B) find posts using each post.id from (A)
    	# (C) pass those posts to an .erb to render the view
    	render :index
    end
end