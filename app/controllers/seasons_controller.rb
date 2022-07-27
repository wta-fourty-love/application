# frozen_string_literal: true

class SeasonsController < ApiController
  def create
    Seasons::Commands::Add.new(params).call
    render json: {}
  end
end
