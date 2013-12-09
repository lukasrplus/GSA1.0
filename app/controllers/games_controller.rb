class GamesController < ApplicationController



def index

  @games = Game.where(:player1_id => session[:u_id])

end



def new
end


def create

@game = Game.new
@game.player1_id = params[:player1_id]
@game.date = params[:date]
@game.time = params[:time]
@game.location = params[:location]
@game.save



  if @game.save
        respond_to do |format|
           format.html do
             redirect_to "/invitations/new?game_id=#{game.id}"
           end
           format.js { render '/invitations/add_invitation_to_game.js.erb' }
         end

  else
      # @errors = @t.errors.full_messages
      # render 'new'
  end



end


def show
  @game = Game.find_by(:id => params[:id])
  @invitations = Invitation.where(:game_id => @game.id)
  @user = User.find_by(:id => @game.player1_id)

end

def set_match

  @invitation = Invitation.find_by(:id => params[:invitation_id])
  @game = Game.find_by(:id => @invitation.game_id)
  @user = User.find_by(:id => @game.player1_id)

end

def update

  @game = Game.find_by(:id => params[:id])
  @game.confirmed = true
  @game.save
  @player1 = User.find_by(:id => @game.player1_id)
  @invitation = Invitation.find_by(:id => params[:invitation_id])

  date = @game.date.strftime("%d. %B %Y")

  InvitationMailer.confirm_player1(@player1, @invitation, @game).deliver

  client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])

      # Create and send an SMS message
      client.account.sms.messages.create(
        from: TWILIO_CONFIG['from'],
        to: @player1.phone,
        body: "Hey #{@player1.name}, your match on #{date} at #{@game.location} has been accepted by #{@invitation.invite_email}. Enjoy! GameSetApp"
      )








  redirect_to root_url


end





end
