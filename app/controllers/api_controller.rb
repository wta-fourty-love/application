# frozen_string_literal: true

class ApiController < ActionController::Base
  rescue_from ::Exceptions::NonExistentObjectError, with: :object_non_exists_error
  rescue_from ::Exceptions::ValidationError, with: :validation_error

  def object_non_exists_error
    render json: { error: 'non_existent_object' }, status: 400
  end

  def validation_error(exception)
    render json: { error: exception.errors }, status: 422
  end
end
