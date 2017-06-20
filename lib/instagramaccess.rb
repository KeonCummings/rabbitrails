class InstagramAccess
	require 'net/http'

	def initialize
		@callback_url = "localhost:3000"
		@client_id = ENV["CLIENT_ID"]
		@client_secret = ENV["CLIENT_SECRET"]
		@authorization_url = "https://api.instagram.com/oauth/authorize/?client_id=#{@client_id}&redirect_uri=#{@callback_url}&response_type=code"
		@access_url = "https://api.instagram.com/oauth/access_token?client_id=#{@client_id}&client_secret=#{@client_secret}&grant_type=authorization_code&authorization_redirect_uri=#{@callback_url}&code=CODE"
	end

	def get_authorization_url
		@authorization_url
	end

	def authorize
		puts @access_url
		uri = URI.parse(@authorization_url)
		Net::HTTP.get(uri) 
	end

	def get_access_token
	end
end