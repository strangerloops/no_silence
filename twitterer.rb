require 'twitter'

class Twitterer

	$twitter_key = "your consumer key"
	$twitter_key_secret = "your consumer secret"
	$twitter_token = "your access token"
	$twitter_token_secret = "your access token secret"

	def initialize
		@client = Twitter::REST::Client.new do |config|
 			config.consumer_key        = $twitter_key
 			config.consumer_secret     = $twitter_key_secret
 			config.access_token        = $twitter_token
 			config.access_token_secret = $twitter_token_secret
		end
	end

	def post_tweet(string)
		@client.update(string)
	end
end