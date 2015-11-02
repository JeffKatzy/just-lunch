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

User.create(name: 'Austin', email: 'austin@flatiron.com', password_digest: 'austin')
User.create(name: 'May', email: 'may@flatiron.com', password_digest: 'may')
User.create(name: 'HoWon', email: 'howon@flatiron.com', password_digest: 'howon')
User.create(name: 'Jill', email: 'jill@flatiron.com', password_digest: 'jill')

Invitation.create(user: User.first, status: "accepted")
Invitation.create(user: User.last, status: "accepted")
Invitation.create(user: User.all[2], status: "accepted")
Invitation.create(user: User.all[3], status: "accepted")

Meeting.create(restaurant: Restaurant.first, time: 12)
Meeting.create(restaurant: Restaurant.last, time: 12)

Guest.create(invitation: Invitation.first, meeting: Meeting.first)
Guest.create(invitation: Invitation.last, meeting: Meeting.first)
Guest.create(invitation: Invitation.all[1], meeting: Meeting.last)
Guest.create(invitation: Invitation.all[2], meeting: Meeting.last)

Restaurant.create(rating: 3.5, location: "11 Broadway")
Restaurant.create(rating: 4.5, location: "145 Broadway")

