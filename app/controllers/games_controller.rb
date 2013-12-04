class GamesController < ApplicationController



def index

  @games = Game.where(:player1_id => session[:u_id])

end



def new
end


def create

game = Game.new
game.player1_id = params[:player1_id]
game.date = params[:date]
game.time = params[:time]
game.location = params[:location]
game.save


redirect_to "/invitations/new?game_id=#{game.id}"

end


def show
  @game = Game.find_by(:id => params[:id])
  @invitations = Invitation.where(:game_id => @game.id)
  @user = User.find_by(:id => @game.player1_id)

end





end
