class Api::V1::ShipsController < ApplicationController
  before_action :find_ship, only: [:show, :edit]

  def index
    render json: Ship.all
  end

  def show
    render json: @ship
  end

  def edit
    if @ship.update_attributes(ship_params)
      render json: @ship, status: :ok
    else
      render json: @ship.errors.messages, status: :unprocessable_entity
    end
  end

  private

  def ship_params
    params.require(:ship).permit(:number)
  end

  def find_ship
    @ship = Ship.find(params[:id])
  end
end
