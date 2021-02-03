# frozen_string_literal: true

class GeneratorService < ApplicationService
  attr_accessor :date, :player

  NUM_PICKS = 8

  def initialize(date:, player:)
    @date = date.to_date
    @player = player
  end

  def call
    player_picks = PlayerPick.joins(:pick).where(pick: { date: date })
    return generate if player_picks.empty?

    player_picks
  end

  def generate
    # TODO: improve performance with bulk inserts
    player_picks = []
    NUM_PICKS.times do
      game = GameGeneratorService.call(date: date)
      pick = PickGeneratorService.call(date: date, game: game, question: Question.random.first)
      player_pick = PlayerPickGeneratorService.call(player: player, pick: pick)
      player_picks << player_pick
    end
    player_picks
  end
end
