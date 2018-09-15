class Post < ApplicationRecord
  validates :title, presence: true
  validates :post_date, presence:true

  mount_uploader :photo, PhotoUploader
end
