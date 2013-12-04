class InvitationsController < ApplicationController


def new
  @game = Game.find_by(:id => params[:game_id])





end


def create
# HAS TO BE CHANGED TO FINDING THE RIGHT GAME CORRESPONDING TO THE PLAYER/USER
invitation = Invitation.new

invitation.game_id = params[:game_id]
invitation.invite_email = params[:invite_email]
invitation.save

redirect_to user_url(session[:u_id])

end

def show
@inivtations = Invitation.where(:id => params[:id])

end



end
