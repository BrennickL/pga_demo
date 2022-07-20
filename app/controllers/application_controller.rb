class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    # NOTE something like Devise, etc...
  end

  def render_model_errors_from(model)
    return unless model.errors.present?

    render json: model.errors.full_messages, status: :bad_request
  end

  def render_errors_for(error)
    render json: { errors: errors.full_messages }, status: :bad_request
  end
end
