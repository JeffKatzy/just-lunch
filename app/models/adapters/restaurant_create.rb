module Adapters
  class RestaurantCreate
    def connection
      @restaurant = Yelp.client.search("10004", {term: 'food'}).businesses.sample(1)
    end

    def self.search
      # restaurant = Yelp.client.search("10004", {term: 'food'}).businesses.sample(1)
      name = restaurant.first.name
      location = restaurant.first.location.display_address
      phone = restaurant.first.phone
      food = restaurant.first.categories.flatten[0]
      url = restaurant.first.url
      postal_code = restaurant.first.location.postal_code
      rating = restaurant.first.rating
      Restaurant.create(name: name, location: location, phone: phone, food: food, url: url, postal_code: postal_code, rating:rating)
    end

  end
end

