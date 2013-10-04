class PostsController < ApplicationController
	def index
		@posts = Post.all
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
