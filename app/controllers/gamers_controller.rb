class GamersController < ApplicationController

  before_filter :get_gamers, :only => [ "index" ]

  def get_gamers
    @gamers = Gamer.all( :order => "tag" )
  end

  def index
  end

end
