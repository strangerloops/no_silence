require 'sinatra'
require 'rufus-scheduler'
require 'newrelic_rpm'
require './messages.rb'
require './twitterer.rb'

class NoSilenceApp < Sinatra::Base

	set :run, true
	set :server, 'webrick'

	tweet_scheduler = Rufus::Scheduler.new
	twitterer = Twitterer.new

	tweets_per_hour = 8
	sleep_time = 3600 / tweets_per_hour
	interval = "#{sleep_time}s"

	tweet_scheduler.every interval do
		message = generate_message
    	twitterer.post_tweet(message)
    	p message
  	end

  	get '/' do
  		'ping'
  	end

	run! if app_file == $0
end