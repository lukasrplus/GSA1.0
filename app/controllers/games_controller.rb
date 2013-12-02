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

redirect_to new_invitation_url

end


def show
end



end
