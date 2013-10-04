class ResourcesController < ApplicationController
	before_filter :check_admin, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@resources = Resource.all
	end

	def new
		@resource = Resource.new
	end

	def create
		@resource = Resource.new(params[:resource])
		@resource.save
		redirect_to resources_url
	end

	def edit
		@resource = Resource.find(params[:id])
	end

	def update
		@resource = Resource.find(params[:id])
		@resource.update_attributes(params[:resource])
		redirect_to resources_url
	end

	def destroy
		@resource = Resource.find(params[:id])
		@resource.destroy
		redirect_to admin_url
	end
end
