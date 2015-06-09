# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Store.delete_all
Store.create!(id: 1,
  name: "Macy's",
created_at: Time.now,
updated_at: Time.now)
Store.create!(id: 2,
  name: "Nordstorm",
created_at: Time.now,
updated_at: Time.now)
