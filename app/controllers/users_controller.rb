class UsersController < ApplicationController
	before_filter :check_admin, :only => [:edit, :update]

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		@user.save
		redirect_to root_url
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update_attributes(params[:user])
		redirect_to admin_url
	end
end
