class DashboardController < ApplicationController
  before_action :auth_user!

  def index
    render json: { clients_count: @current_user.clients.count, tariff_count: @current_user.tariffs.count }
  end
end
