class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.order(created_at: :desc).page(params[:page]).per(15)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: 'ユーザー登録が完了しました'
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
    # ストロングパラメーター
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


    def current_user

    end

    def admin_user

    end

    def set_user
      @user = User.find(params[:id])
    end
end
