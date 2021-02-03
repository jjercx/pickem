# frozen_string_literal: true

class PlayerPickGeneratorService < ApplicationService
  attr_accessor :player, :pick

  NUM_PICKS = 8

  def initialize(pick:, player:)
    @player = player
    @pick = pick
  end

  def call
    PlayerPick.create(pick: pick, player: player)
  end

end
