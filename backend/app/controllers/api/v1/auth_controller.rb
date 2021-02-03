# frozen_string_literal: true

class Api::V1::AuthController < Api::ApiController
  protect_from_forgery with: :null_session
  skip_before_action :verify_token, only: %i[sign_up log_in]

  def sign_up
    @player = Player.create(player_params)
    if @player.valid?
      token = encode_token({ player_id: @player.id })
      render json: { player: @player, token: token }
    else
      render json: { error: @player.errors.full_messages.join(',') }, status: :unauthorized
    end
  end

  def log_in
    @player = Player.find_by(email: params[:email])

    if @player&.authenticate(params[:password])
      token = encode_token({ player_id: @player.id })
      render json: { player: @player, token: token }
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def player_params
    params.permit(:email, :password)
  end
end
