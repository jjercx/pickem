# frozen_string_literal: true

class GameGeneratorService < ApplicationService
  attr_accessor :date

  def initialize(date:)
    @date = date.to_date
  end

  def call
    teams = Team.random.limit(2)
    Game.create(
      local_team: teams[0],
      visitor_team: teams[1],
      date: date,
    )
  end
end
