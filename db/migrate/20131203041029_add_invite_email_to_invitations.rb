class AddInviteEmailToInvitations < ActiveRecord::Migration
  def change

    add_column :invitations, :invite_email, :string

  end
end
