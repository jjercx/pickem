json.id player_pick.id
json.pick do
  json.partial! 'api/v1/picks/pick', pick: player_pick.pick
end
json.selected_option player_pick.selected_option
