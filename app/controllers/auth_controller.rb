class AuthController < ApplicationController
  skip_before_action :authenticate_user!

  def register
    if current_user
      render json: { errors: ["You are already logged in"] }, status: 409
    else
      user = User.new(user_params)
      if user.save
        token = Auth.issue({id: user.id})
        render json: { token: token, user: UserSerializer.new(user) }, status: :ok
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def login
    if current_user
      render json: { errors: ["You are already logged in"] }, status: 409
    else
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        token = Auth.issue({id: user.id})
        render json: { token: token, user: UserSerializer.new(user) }, status: :ok
      else
        render json: { errors: ["Invalid login credentials."]}, status: 401
      end
    end
  end

  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end

end
