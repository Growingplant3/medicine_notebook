class HomesController < ApplicationController
  def index
  end

  def opinion
    @users = User.all
  end

  def history
  end
end
