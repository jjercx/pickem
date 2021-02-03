# == Schema Information
#
# Table name: games
#
#  id              :bigint           not null, primary key
#  local_team_id   :bigint           not null
#  visitor_team_id :bigint           not null
#  date            :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class GameSerializer
  include JSONAPI::Serializer
  attribute :date
  belongs_to :local_team, record_type: :team, serializer: :team
  belongs_to :visitor_team, record_type: :team, serializer: :team
end
