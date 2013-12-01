class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.date :date
      t.time :time
      t.string :location
      t.boolean :confirmed

      t.timestamps
    end
  end
end
