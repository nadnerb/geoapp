class UsersController < ApplicationController

  def index
    show
  end

  def show
    @json = User.all.to_gmaps4rails
  end
end
