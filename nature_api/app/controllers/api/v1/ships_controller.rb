class Api::V1::ShipsController < ApplicationController
  def index
    render json: Ship.all
  end
end
