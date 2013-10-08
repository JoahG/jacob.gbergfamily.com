class Post < ActiveRecord::Base
	is_impressionable 
	
	attr_accessible :title, :content, :post_type, :user_id, :tag_list, :html, :url 
	acts_as_taggable
	belongs_to :user
end
