json.id game.id
json.local_team do
  json.partial! 'api/v1/teams/team', team: game.local_team
end
json.visitor_team do
  json.partial! 'api/v1/teams/team', team: game.visitor_team
end
json.date game&.date.to_s
