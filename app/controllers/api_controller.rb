# frozen_string_literal: true

class ApiController < ActionController::Base
  rescue_from ::Exceptions::ValidationError, with: :validation_error

  def validation_error(exception)
    render json: { error: exception.errors }, status: 422
  end
end
