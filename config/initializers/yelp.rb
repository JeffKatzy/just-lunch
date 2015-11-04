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
    config.consumer_key = "G2XLqW5t9SaRkb5Ubo0yHg"
    config.consumer_secret = "FG6Kz2YB5e1qPnZRs9VXvyPeMcM"
    config.token = "cjmpFB_YjZ1x3vZA6DMPji6ITw9ZdKMt"
    config.token_secret = "eCqO1y3X2jnum0LPow5Yrtso7lM"
  end
  # binding.pry

  Yelp.client.search("new york")
