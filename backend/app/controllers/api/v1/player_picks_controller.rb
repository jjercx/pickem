# frozen_string_literal: true

class Api::V1::PlayerPicksController < Api::ApiController
  def index
    @player_picks = GeneratorService.call(date: params[:date], player: current_player).order(:created_at)
  end

  def update
    selected_option = PlayerPick.selected_options[params[:option]]
    PlayerPick.find(params[:id]).update(selected_option: selected_option)
    render json: { success: true }
  end
end
