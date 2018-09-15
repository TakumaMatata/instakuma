# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Post.destroy_all
User.destroy_all

puts 'Creating posts...'
posts_attributes = [
  {
    title: Faker::RuPaul.queen ,
    post_date: Faker::Date.between(5.days.ago, Date.today) ,
    description: Faker::Friends.quote ,
  },

]

takuma = User.new(email: "takuma@gmail.com", password: "123456")


takuma.save!
Post.create!(posts_attributes)
puts 'Finished!'


# t.string "title"
#     t.date "post_date"
#     t.text "description"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "photo"
