class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :gamer_id, :null => false
      t.integer :game_id, :null => false
      t.integer :points, :null => false

      t.timestamps
    end
  end
end
