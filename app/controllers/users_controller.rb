class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name))

    if @user.save!
      @u = @user.id
      redirect_to user_path(@u)
    else
      render :new
    end
  end

  def show

  end

end
