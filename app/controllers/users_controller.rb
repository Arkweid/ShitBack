class UsersController < ApplicationController
  def create
    user = User.new(users_params)

    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def users_params
    params.permit(:email, :name, :password, :password_confirmation)
  end
end
