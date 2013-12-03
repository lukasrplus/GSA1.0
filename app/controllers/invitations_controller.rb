class InvitationsController < ApplicationController


def new
end


def create

invitation = Invitation.new
game = Game.where(:player1_id => session[:u_id]).last
invitation.game_id = game.id
invitation.invite_email = params[:invite_email]
invitation.save

redirect_to user_url(session[:u_id])

end



end
