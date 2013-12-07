class InvitationMailer < ActionMailer::Base

  default from: "gsatennis@gmail.com"

  def send_invitation_0(invitation)

    @i_0 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def send_invitation_1(invitation)

    @i_1 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def send_invitation_2(invitation)

    @i_2 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def send_invitation_3(invitation)

    @i_3 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def send_invitation_4(invitation)

    @i_4 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def send_invitation_5(invitation)

    @i_5 = invitation

    @game = Game.find_by(:id => invitation.game_id)

    @organizer = User.find_by(:id => @game.player1_id)

    mail to: invitation.invite_email, :subject => "Let's play Tennis"

  end

  def confirm_player1(organizer, invitation, game)

    @player1 = organizer

    @invitation = invitation

    @game = game

    mail to: organizer.email, :subject => "Your match has been confirmed!"

  end

  def confirm_player2

  end



end
