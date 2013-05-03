class CreateGamers < ActiveRecord::Migration
  def change
    create_table :gamers do |t|
      t.string :tag, :null => false
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.string :password, :null => false

      t.timestamps
    end
  end
end
