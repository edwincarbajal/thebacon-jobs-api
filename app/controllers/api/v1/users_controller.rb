class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    render json: @user, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {status: 'ERROR', errors: @user.errors}, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
