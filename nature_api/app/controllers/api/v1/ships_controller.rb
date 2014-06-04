class Api::V1::ShipsController < ApplicationController
  before_action :find_ship, only: [:show, :edit]

  def index
    render json: Ship.all
  end

  def show
    render json: @ship
  end

  def edit
    render json: @ship.update_attributes(ship_params), status: :ok
  end

  private

  def ship_params
    params.require(:ship).permit(:code, :number)
  end

  def find_ship
    @ship = Ship.find(params[:id])
  end
end
