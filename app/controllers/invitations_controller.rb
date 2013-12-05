class InvitationsController < ApplicationController


def new
  @game = Game.find_by(:id => params[:game_id])

end



def create
# HAS TO BE CHANGED TO FINDING THE RIGHT GAME CORRESPONDING TO THE PLAYER/USER
@invitation = Invitation.new

@invitation.game_id = params[:game_id]
@invitation.invite_email = params[:invite_email]
@invitation.save


end


def add_invitation

   @game = Game.find_by(:id => params[:game_id])


        respond_to do |format|
           format.html do
             redirect_to user_url(session[:u_id])
           end
           format.js { render '/invitations/add_another_invitation_to_game.js.erb' }
        end



end




def show
@inivtations = Invitation.where(:id => params[:id])

end



end
