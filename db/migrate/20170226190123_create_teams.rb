class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :team_school
      t.string :team_category
      t.integer :team_point

      t.timestamps
    end
  end
end
