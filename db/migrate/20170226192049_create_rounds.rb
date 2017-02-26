class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :round_map
      t.integer :round_room

      t.timestamps
    end
  end
end
