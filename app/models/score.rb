class Score < ActiveRecord::Base

  attr_accessible :gamer_id, :game_id, :points

  validates_presence_of :gamer_id, :game_id, :points

  belongs_to :gamer
  belongs_to :game

end
