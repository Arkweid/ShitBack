class ApplicationController < ActionController::API

  private

  def auth_user!
    @current_user = User.find_by!(authentication_token: params[:token])
  end
end
