class StaticPagesController < ApplicationController
	def index
	end

	def updatemenu
	end

	def menu
		@files = Dir.glob(Rails.root.join('app/assets', 'menu'))
		@list = Dir.entries(@files.first)
		@subsetList= @list.select {|img| img.include? 'png'}
		@menuImg = @subsetList.first
	end

	def upload
		  uploaded_io = params[:picture]
		  File.open(Rails.root.join('app/assets', 'menu', uploaded_io.original_filename), 'wb') do |file|
		    file.write(uploaded_io.read)
	  	end
	  	flash[:success] = "New Menu Image Uploaded"
	  	redirect_to login_path
	end
end
