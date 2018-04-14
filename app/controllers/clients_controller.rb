class ClientsController < ApplicationController
  before_action :auth_user!

  def index
    render json: @current_user.clients
  end
end
