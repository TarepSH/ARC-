class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.integer :round_id
      t.string :team_catagory
      t.integer :game_point
      t.time :game_time

      t.timestamps
    end
  end
end
