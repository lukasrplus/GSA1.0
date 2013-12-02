class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :invitee1
      t.string :invitee2
      t.string :invitee3
      t.string :invitee4
      t.string :invitee5
      t.integer :game_id

      t.timestamps
    end
  end
end
