class AddGamesPlayToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :games_play, :integer
  end
end
