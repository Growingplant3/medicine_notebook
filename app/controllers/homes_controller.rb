class HomesController < ApplicationController
  def index
  end

  def opinion
    @users = User.all
    @pharmacies = Pharmacy.all
  end

  def history
  end

  def develop
  end
end
