class AddTeamToGames < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :team_id
  end
end
