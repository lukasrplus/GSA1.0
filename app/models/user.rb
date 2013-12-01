class User < ActiveRecord::Base

has_secure_password

validates_presence_of :name, :on => :create
validates_presence_of :email, :on => :create


def games
  Game.where(:player1_id => self.id)
end

end
