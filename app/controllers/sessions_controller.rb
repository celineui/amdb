class SessionsController < ApplicationController

  def new
  end

  def create
    twitter_data = request.env["omniauth.auth"]
    logger.info twitter_data['provider']
    logger.info twitter_data['info'].inspect
    name = twitter_data['info']['username']

    @user = User.find_by_username(name)

    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_url
    else
      @user = User.create(username: name)
      session[:user_id] = @user.id
      # redirect_to '/sessions/new', :notice => "Nice try!"
      redirect_to root_url
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

end










