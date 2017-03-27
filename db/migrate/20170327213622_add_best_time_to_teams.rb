class AddBestTimeToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :best_time, :float
  end
end
