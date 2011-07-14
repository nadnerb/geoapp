class UsersController < ApplicationController

  def index
    puts "444444444"
    @json = User.all.to_gmaps4rails
  end

  def show
    puts "#######"
    puts User.all
    @json = User.all.to_gmaps4rails
  end
end
