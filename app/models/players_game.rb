class PlayersGame < ApplicationRecord
  belongs_to :player
  belongs_to :game
  belongs_to :course

end
