class Post < ApplicationRecord
  validates :title, presence: true
  validates :post_date, presence:true
    # create_table "posts", force: :cascade do |t|
    # t.string "title"
    # t.date "post_date"
    # t.text "description"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string "photo"
end
