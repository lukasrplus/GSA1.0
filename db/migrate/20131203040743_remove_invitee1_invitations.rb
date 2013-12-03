class RemoveInvitee1Invitations < ActiveRecord::Migration
  def change

    remove_column :invitations, :invitee1, :string
    remove_column :invitations, :invitee2, :string
    remove_column :invitations, :invitee3, :string
    remove_column :invitations, :invitee4, :string
    remove_column :invitations, :invitee5, :string

  end
end
