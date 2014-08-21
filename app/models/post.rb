class Post < ActiveRecord::Base
	has_many :posttags
	has_many :tags, :through => :posttags
end
