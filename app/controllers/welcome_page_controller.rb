class WelcomePageController < ApplicationController
  def index
  	@user = current_user

  	if @user
  		render 'coffee_shops/index'
  	end
  end
end
