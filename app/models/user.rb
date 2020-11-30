class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true
end
