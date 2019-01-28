class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc).page(params[:page]).per(15)
  end

  def show
  end

  def new
  end

  def create
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
end
