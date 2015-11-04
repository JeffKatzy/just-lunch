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
    config.consumer_key = ""
    config.consumer_secret = ""
    config.token = ""
    config.token_secret = ""
  end
  # binding.pry

  Yelp.client.search("new york")
