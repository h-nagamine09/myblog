class UsersController < ApplicationController

  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'ユーザー登録が完了しました'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました'
      render :new
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      flash[:success] = 'ユーザー情報をアップデートしました'
      redirect_to @user
    else
      flash[:danger] = 'ユーザー情報のアップデートに失敗しました'
      render "edit"
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
