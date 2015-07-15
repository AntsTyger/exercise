class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about]
  
  def home
  end

  def users
  end
  
  def stats
  end
  
end
  