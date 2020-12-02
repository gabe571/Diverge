class Game < ApplicationRecord
    belongs_to :game_studio
    has_many :reviews, through: :users
end
