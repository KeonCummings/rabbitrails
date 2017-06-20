module StaticPagesHelper
	def get_menu_image
		#Get all the files in the menu directory
		@files = Dir.glob(Rails.root.join('app/assets', 'menu'))
		#List the entries in the menu and grab the first file
		@list = Dir.entries(@files.first)
		#Since the list is an array - loop through array and pic the file that has a png extension
		@subset_list= @list.select {|img| img.include? 'png'}
		@menu_image = @subset_list.first
	end

	def upload_file(params_file)
		  File.open(Rails.root.join('app/assets', 'menu', params_file.original_filename), 'wb') do |file|
		    file.write(params_file.read)
	  	end
	end

	def authorization_url
		url = InstagramAccess.new
		url.get_authorization_url
	end
end
