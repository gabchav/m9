class TvShow < ApplicationRecord
    has_many :film_locations, inverse_of: :tv_show
    accepts_nested_attributes_for :film_locations
    has_many :episodes, dependent: :destroy
    validates :name, presence: true
    belongs_to :nationality
    belongs_to :user
    has_and_belongs_to_many :actors
    has_many :genre_tv_shows, dependent: :destroy
    has_many :genres, through: :genre_tv_shows
end