json.id pick.id
json.game do
  json.partial! 'api/v1/games/game', game: pick.game
end
json.question do
  json.partial! 'api/v1/questions/question', question: pick.question
end
json.right_option pick.right_option
json.date pick.date.to_s
json.option_a_count pick.option_a_count
json.option_b_count pick.option_b_count
json.option_a_percent pick.option_a_percent
json.option_b_percent pick.option_b_percent
