class CreatePlayersGames < ActiveRecord::Migration[7.0]
  def change
    create_table :players_games do |t|
      t.belongs_to :player
      t.belongs_to :game
      t.belongs_to :course

      t.timestamps
    end
  end
end
