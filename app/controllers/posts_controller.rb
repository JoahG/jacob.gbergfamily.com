class PostsController < ApplicationController
	def index
		if params[:tag]
			@posts = Post.tagged_with(params[:tag])
		elsif params[:type]
			@posts = Post.all.select{|p| p.post_type == params[:type]}
		else
			@posts = Post.all
		end
		
		respond_to do |f|
			f.html
			f.js
		end
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def show
		@post = Post.find(params[:id])
		respond_to do |f|
			f.html
			f.js
		end
	end
end
