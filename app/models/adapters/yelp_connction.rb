module Adapters
class YelpConnection
  keys = YAML.load_file('application.yml')
  Yelp.client.configure do |config|
    config.consumer_key = keys['CONSUMER_KEY']
    config.consumer_secret = keys['CONSUMER_SECRET']
    config.token = keys['TOKEN']
    config.token_secret = keys['TOKEN_SECRET']
   end
  end
end