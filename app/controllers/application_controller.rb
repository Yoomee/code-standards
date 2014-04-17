class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private
  def authenticate
    if Rails.env.production? && request.remote_ip != "77.86.30.132"
      authenticate_or_request_with_http_basic 'Yoomee' do |u, p|
        [u, p] == ['yoomee', 'olive123']
      end
    end
  end
end
