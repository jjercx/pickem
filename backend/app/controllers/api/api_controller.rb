# frozen_string_literal: true

class Api::ApiController < ActionController::Base
  before_action :verify_token
  protect_from_forgery with: :null_session

  def encode_token(payload)
    JWT.encode(payload, ENV['JWT_SECRET'])
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split[1]
    begin
      JWT.decode(token, ENV['JWT_SECRET'], true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end

  def current_player
    return unless decoded_token

    @current_player = Player.find_by(id: decoded_token[0]['player_id'])
  end

  def verify_token
    render json: { message: 'Please log in' }, status: :unauthorized unless current_player
  end
end
