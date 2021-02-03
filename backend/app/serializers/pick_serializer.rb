# frozen_string_literal: true

class PickSerializer
  include JSONAPI::Serializer
  attributes :date, :option_a_count, :option_b_count, :option_a_percent, :option_b_percent
  belongs_to :question
  belongs_to :game
end
