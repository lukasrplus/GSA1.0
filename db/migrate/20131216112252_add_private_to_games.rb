class AddPrivateToGames < ActiveRecord::Migration
  def change
    add_column :games, :private, :boolean, :default => true
  end
end
