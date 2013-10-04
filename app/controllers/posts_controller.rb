class PostsController < ApplicationController
	def index
		if params[:tag]
			@posts = Post.tagged_with(params[:tag]).reverse
		elsif params[:type]
			@posts = Post.all.select{|p| p.post_type == params[:type]}.reverse
		else
			@posts = Post.all.reverse[0..15]
		end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		@post.save
		redirect_to root_url
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes(params[:post])
		@post.save
		redirect_to root_url
	end

	def show
		@post = Post.find(params[:id])
		respond_to do |f|
			f.html
			f.js
		end
	end

	def archive
		@posts = Post.all.reverse
	end

	def resources
	end

	def about
	end

	def admin
	end
end
