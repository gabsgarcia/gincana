class ProfilesController < ApplicationController

  def new
    @profile = current_user
  end

  def create
    @profile = current_user
    if @profile.update(user_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :nickname, :age, :photo)
  end
end
