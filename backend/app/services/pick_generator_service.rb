# frozen_string_literal: true

class PickGeneratorService < ApplicationService
  attr_accessor :date, :game, :question

  def initialize(date:, game:, question:)
    @date = date.to_date
    @game = game
    @question = question
  end

  def call
    Pick.create(
      game: game,
      question: question,
      date: date,
    )
  end
end
