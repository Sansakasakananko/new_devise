class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      format.html { redirect_to user_url(@user), notice: "登録完了しました。" }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: '編集完了しました。'
    else
      render :edit
    end

  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: '削除完了しました。'
  end




  private

#   def set_user
#     @user = User.find(params[:id])
#   end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :photo)
  end
end
