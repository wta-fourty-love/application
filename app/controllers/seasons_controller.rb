# frozen_string_literal: true

class SeasonsController < ApiController
  def add
    Seasons::Commands::Add.new(params).call
    render json: {}
  end
end
