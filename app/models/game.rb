class Game < ActiveRecord::Base

  attr_accessible :name

  validates_presence_of :name

  has_many :gamers, :through => :scores
  has_many :scores, :dependent => :destroy

end
