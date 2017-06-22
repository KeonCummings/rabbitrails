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

	def getMedia(id)
		accessToken = "44305243.465bfb2.a901c6b9e97f4e7694295cf0450b6aa7"
		uri = "https://api.instagram.com/v1/users/#{id}/media/recent/?access_token=#{accessToken}"
	end

	def searchUser(q)
		accessToken = "44305243.465bfb2.a901c6b9e97f4e7694295cf0450b6aa7"
		uri = URI.parse("https://api.instagram.com/v1/users/search?q=#{q}&access_token=#{accessToken}")
		Net::HTTP.get(uri) 
		res = Net::HTTP.get_response(uri)
		puts res.body
	end

	def get_access_token
	end
end