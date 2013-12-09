class Game < ActiveRecord::Base

  belongs_to :user

  validates :date, :presence => true


end
