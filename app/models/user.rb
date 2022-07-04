class User < ApplicationRecord
  has_many :tv_shows, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
end
