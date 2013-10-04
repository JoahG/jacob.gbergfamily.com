class User < ActiveRecord::Base
	include Gravtastic
	gravtastic :size => 200
	attr_accessible :email, :name, :password, :password_confirmation, :about
	has_many :posts
	has_secure_password
	validates_presence_of :password, :on => :create
end
