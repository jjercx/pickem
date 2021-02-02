# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :local_team, class_name: 'Team'
  belongs_to :visitor_team, class_name: 'Team'

  validate :teams_must_be_different

  private

  def teams_must_be_different
    errors.add(:teams, 'must be different') if local_team == visitor_team
  end
end
