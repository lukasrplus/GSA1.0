class InvitationsController < ApplicationController


def new
end


def create

invitation = Invitation.new
game = Game.where(:player1_id => session[:u_id]).last
invitation.game_id = game.id
invitation.invitee1 = params[:invitee1]
invitation.invitee2 = params[:invitee2]
invitation.invitee3 = params[:invitee3]
invitation.invitee4 = params[:invitee4]
invitation.invitee5 = params[:invitee5]
invitation.save

redirect_to user_url(session[:u_id])

end



end
