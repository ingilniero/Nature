class Api::V1::ShipsController < ApplicationController
  before_action :find_ship, only: :show

  def index
    render json: Ship.all
  end

  def show
    render json: @ship
  end

  private

  def find_ship
    @ship = Ship.find(params[:id])
  end
end
