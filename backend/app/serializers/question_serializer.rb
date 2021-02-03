# frozen_string_literal: true

class QuestionSerializer
  include JSONAPI::Serializer
  attribute :text
end
