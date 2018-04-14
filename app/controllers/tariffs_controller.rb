class TariffsController < ApplicationController
  before_action :auth_user!

  def index
    render json: @current_user.tariffs
  end

  def create
    render json: @current_user.tariffs.create!(tariff_params)
  end

  def destroy
  end

  private

  def tariff_params
    params.require(:tariff_params).permit(:name, :description, :tax, :traffic_limit, :traffic_current)
  end
end
