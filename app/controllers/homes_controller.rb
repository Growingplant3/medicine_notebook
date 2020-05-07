class HomesController < ApplicationController
  def index
  end

  def opinion
    @users = User.all
  end
end
