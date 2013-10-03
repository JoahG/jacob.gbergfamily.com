class Post < ActiveRecord::Base
	attr_accessible :content, :html, :title, :type, :url, :user_id, :tag_list
	acts_as_taggable
	belongs_to :user
end
