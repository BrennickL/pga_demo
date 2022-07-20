class Game < ApplicationRecord
  has_many :players_games
  has_many :players, through: :players_games

  validates :tee_time, presence: true
end
