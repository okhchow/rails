class Gamer < ActiveRecord::Base

  attr_accessible :tag, :firstname, :lastname, :password

  validates_presence_of :tag, :firstname, :lastname, :password
  validates :tag, :format => {
    :with => /^[\w\-][0-9\w\-]*$/,
    :message => "Gamer tag must start with a letter and can only contain letters, numbers, and symbols { `_`, `-` }"
  }
  validates :firstname, :format => {
    :with => /^[A-Za-z'\-]$/,
    :message => "Bad format for first name"
  }
  validates :lastname, :format => {
    :with => /^[A-Za-z'\-]$/,
    :message => "Bad format for last name"
  }

  has_many :games, :through => :scores
  has_many :scores, :dependent => :destroy

  def self.login?( user, pass )
    Gamer.first( :conditions => { :tag => user, :password => pass } )
  end

end
