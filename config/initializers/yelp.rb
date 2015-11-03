require 'yaml'
require 'yelp'
require 'pry'


  # keys = YAML.load_file('application.yml')
  # @client = Yelp::REST::Client.new do |config|
  #   config.consumer_key        = keys['CONSUMER_KEY']
  #   config.consumer_secret     = keys['CONSUMER_SECRET']
  #   config.token        = keys['TOKEN']
  #   config.token_secret = keys['TOKEN_SECRET']
  # end

  Yelp.client.configure do |config|
    config.consumer_key = "ZHgho029_Tnq1AURqYxrUg"
    config.consumer_secret = "KUUsuYiqM2zo1EbRnrM6sqx_yEw"
    config.token = "G5WDhVGRZARzleO0RG2Li1UrtJhfrJad"
    config.token_secret = "mr6YE3gFpRNeEQCvgcB_3e-KYfk"
  end
  # binding.pry

  Yelp.client.search("new york")
