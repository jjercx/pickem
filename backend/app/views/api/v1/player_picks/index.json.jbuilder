# frozen_string_literal: true

Jbuilder.encode do
  json.player_picks(@player_picks) do |player_pick|
    json.partial! 'api/v1/player_picks/player_pick', player_pick: player_pick
  end
end
