class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.timestamp :tee_time
      t.timestamp :finish_time

      t.timestamps
    end
  end
end
