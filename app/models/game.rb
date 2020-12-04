class Game < ApplicationRecord
    include HTTParty
    belongs_to :game_studio
    has_many :reviews, through: :users
    has_many :users, through: :reviews
end
