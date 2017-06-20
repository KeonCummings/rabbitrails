class StaticPagesController < ApplicationController
	include StaticPagesHelper

	def index
	end

	def updatemenu
	end

	def menu
	end

	def authorize_instagram
		redirect_to authorization_url
	end

	def gallery
	end

	def upload
		#Takes the params from file opens file and writes it to menu folder in the asset pipeline
		uploaded_io = params[:picture]
		upload_file uploaded_io
	  	flash[:success] = "New Menu Image Uploaded"
	  	render login_path
	end
end