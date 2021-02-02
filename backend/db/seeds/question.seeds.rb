# frozen_string_literal: true

puts 'Seeding questions...'

Question.find_or_create_by(text: 'Which team will win the game?')
Question.find_or_create_by(text: 'Which team will have more ball possesion?')
Question.find_or_create_by(text: 'Which team will have less ball possesion?')
Question.find_or_create_by(text: 'Which team will do more home runs?')
Question.find_or_create_by(text: 'Which team will do more faults?')
Question.find_or_create_by(text: 'Which team will do less home runs?')
Question.find_or_create_by(text: 'Which team will do less faults?')
Question.find_or_create_by(text: 'Which team will have more yellow cards?')
Question.find_or_create_by(text: 'Which team will have more red cards?')
Question.find_or_create_by(text: 'Which team will have less yellow cards?')
Question.find_or_create_by(text: 'Which team will have less red cards?')
Question.find_or_create_by(text: 'Which team will score first?')
Question.find_or_create_by(text: 'Which team will have more offside positions?')
Question.find_or_create_by(text: 'Which team will have more successful passes?')
Question.find_or_create_by(text: 'Which team will have less offside positions?')
Question.find_or_create_by(text: 'Which team will have less successful passes?')
