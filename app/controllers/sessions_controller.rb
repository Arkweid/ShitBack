class SessionsController < ActionController::API

  def create
    user = User.find_by(email: params[:email])

    if user&.valid_password?(params[:password])
      sign_in(:user, user)
      render json: user, status: :created
    else
      head :unauthorized
    end
  end

  def destroy
    user = User.find_by(authentication_token: params[:authentication_token])

    if user&.update!(authentication_token: nil)
      head 200
    else
      head :unauthorized
    end
  end
end
