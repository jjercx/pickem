class GameSerializer
  include JSONAPI::Serializer
  attribute :date
  belongs_to :local_team, record_type: :team, serializer: :team
  belongs_to :visitor_team, record_type: :team, serializer: :team
end
