# frozen_string_literal: true

class Api::V1::PlayerPicksController < Api::ApiController
  def index
    @player_picks = GeneratorService.call(date: params[:date], player: current_player)
  end
end
