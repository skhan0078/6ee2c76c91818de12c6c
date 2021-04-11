class Api::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    render :json => User.all
  end

  def show
    render :json => @user
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      render :json => user
    else
      render json: { 'Error': user.errors.messages, ststus: 500 }
    end
  end

  def update
    if @user.update(user_params)
      render :json => @user
    else
      render json: { 'Error': @user.errors.messages, ststus: 500 }
    end
  end

  def destroy
    if @user.destroy
      render :json => {}
    else  
      render json: { 'Error': @user.errors.messages, ststus: 500 }
    end
  end

  private

  def set_user
    @user = User.find_by(_id: params[:id])
  end

  def user_params
    params.require(:users).permit(:firstName, :lastName, :email)
  end
end
