class UsersController < ApplicationController
  def show
    @user = User.find(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = t("title")
      redirect_to @user
    else
      flash[:danger] = t("danger_user")
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
        :password_confirmation)
    end
end
