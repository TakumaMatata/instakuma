class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: {in: 6..20}, on: :create

  # t.string :email
  # t.string :password
  # t.boolean :admin
end
