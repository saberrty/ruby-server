class ApplicationController < ActionController::API
  def ping
    render plain: 'pong'
  end

  def auth_ping
    render plain: 'pong'
  end
end
