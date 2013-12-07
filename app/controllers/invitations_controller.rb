class InvitationsController < ApplicationController


def new
  @game = Game.find_by(:id => params[:game_id])

end



def create

if params[:invite_email_0].present?
  @i_0 = Invitation.new
  @i_0.game_id = params[:game_id]
  @i_0.invite_email = params[:invite_email_0]
  @i_0.save
  InvitationMailer.send_invitation_0(@i_0).deliver
end

if params[:invite_email_1].present?
  @i_1 = Invitation.new
  @i_1.game_id = params[:game_id]
  @i_1.invite_email = params[:invite_email_1]
  @i_1.save
  InvitationMailer.send_invitation_1(@i_1).deliver
end

if params[:invite_email_2].present?
  @i_2 = Invitation.new
  @i_2.game_id = params[:game_id]
  @i_2.invite_email = params[:invite_email_2]
  @i_2.save
  InvitationMailer.send_invitation_2(@i_2).deliver
end

if params[:invite_email_3].present?
  @i_3 = Invitation.new
  @i_3.game_id = params[:game_id]
  @i_3.invite_email = params[:invite_email_3]
  @i_3.save
  InvitationMailer.send_invitation_3(@i_3).deliver
end

if params[:invite_email_4].present?
  @i_4 = Invitation.new
  @i_4.game_id = params[:game_id]
  @i_4.invite_email = params[:invite_email_4]
  @i_4.save
  InvitationMailer.send_invitation_4(@i_4).deliver
end

if params[:invite_email_5].present?
  @i_5 = Invitation.new
  @i_5.game_id = params[:game_id]
  @i_5.invite_email = params[:invite_email_5]
  @i_5.save
  InvitationMailer.send_invitation_5(@i_5).deliver
end

redirect_to user_url(session[:u_id])


end









# HAS TO BE CHANGED TO FINDING THE RIGHT GAME CORRESPONDING TO THE PLAYER/USER
# @invitation = Invitation.new

# @invitation.game_id = params[:game_id]
# @invitation.invite_email = params[:invite_email]



# if @invitation.save
#       redirect_to user_url(session[:u_id])
#    else
#       # @errors = @t.errors.full_messages
#       # render 'new'
#   end


# end


# def group_invitation

#    @game = Game.find_by(:id => params[:game_id])


#         respond_to do |format|
#            format.html do
#              redirect_to user_url(session[:u_id])
#            end
#            format.js { render '/invitations/group_invitation.js.erb' }
#         end



# end




def show
@inivtations = Invitation.where(:id => params[:id])

end



end
