# frozen_string_literal: true

class PicksGeneratorService < ApplicationService
  attr_accessor :date

  NUM_PICKS = 8

  def initialize(date)
    @date = date.to_date
  end

  def call
    picks = Pick.where(date: date)
    return generate if picks.empty?

    picks
  end

  def generate
    NUM_PICKS.times do |_t|
      Pick.create(
        game: GameGeneratorService.call,
        question: Question.random.first,
      )
    end
  end
end
