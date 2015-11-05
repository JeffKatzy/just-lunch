# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Invitation.destroy_all
Meeting.destroy_all
Guest.destroy_all
Restaurant.destroy_all

# User.create(name: 'Austin', email: 'austin@flatiron.com', password_digest: 'austin')

# Invitation.create(user: User.first, status: "accepted", restaurant: Restaurant.first)

# Meeting.create(time: 12)

# Guest.create(invitation: Invitation.first, meeting: Meeting.first)

# Restaurant.create(rating: 3.5, location: "11 Broadway")

Fabricator(:user) do 
	name { Faker::Name.name }
	email {Faker::Internet.email}
	password { "test"}
	password_confirmation { |attrs| attrs[:password] }
	birthdate {"{1=> #{rand(1950..1996)},2=> #{rand(1..12)}, 3=> #{rand(1..28)}}"}
end
#user password is always test
10.times {Fabricate(:user)}