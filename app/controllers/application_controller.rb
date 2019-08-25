class ApplicationController < ActionController::Base
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized

  private

  def not_authorized
    render json: { error: 'Not Authorized' }, status: :unauthorized
  end
end
