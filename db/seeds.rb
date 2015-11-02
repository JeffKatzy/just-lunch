# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destory_all

User.new(name: 'Austin', email: 'austin@flatiron.com', password_digest: 'austin')
User.new(name: 'May', email: 'may@flatiron.com', password_digest: 'may')
User.new(name: 'HoWon', email: 'howon@flatiron.com', password_digest: 'howon')