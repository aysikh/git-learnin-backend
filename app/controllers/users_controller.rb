class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: 'wrong email/password'
      }
    end
  end

  def index
    @users = User.all
    render :json => @users
  end

  def show
    @user = User.find(params[:id])
    if @user
      render :json => @user
    else
      render json: {
        status: 500,
        errors: 'no user found'
      }
    end
  end

  def create
    @user = User.new(
      name: params[:name],
      password: params[:password],
      email: params[:email]
    )
    if @user.save
      render json: {
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: 'Email already exists in the system.'
      }
    end
  end

  def update
    @user = User.find(params[:id])
    if @user
      @user.update(name: params[:name], email: params[:email], password: params[:password])
      render json: {
        errors: false,
        info: 'client updated',
      }
    else
      render json: {
        errors: true,
        info: 'try again'
      }
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user
  end


end
