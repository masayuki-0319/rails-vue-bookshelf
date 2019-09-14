class ApplicationController < ActionController::Base
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized

  private

  # [current_user]メソッド追加（今後の本データとの関連付けに使用予定）
  def current_user
    @current_user ||= User.find(payload['user_id'])
  end

  def not_authorized
    render json: { error: 'Not Authorized' }, status: :unauthorized
  end
end
