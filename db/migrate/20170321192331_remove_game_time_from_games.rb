class RemoveGameTimeFromGames < ActiveRecord::Migration[5.0]
  def change
  remove_column :games, :game_time

  end
end
