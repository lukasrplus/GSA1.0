class GamesController < ApplicationController


def new
end


def create

game = Game.new
game.player1_id = params[:player1_id]
game.date = params[:date]
game.time = params[:time]
game.location = params[:location]
game.save

redirect_to users_url

end



end
