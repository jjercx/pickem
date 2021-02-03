# frozen_string_literal: true

class TeamSerializer
  include JSONAPI::Serializer
  attribute :name
end
