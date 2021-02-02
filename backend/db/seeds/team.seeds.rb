# frozen_string_literal: true

puts 'Seeding teams...'

21.times { Team.find_or_create_by(name: Faker::Sports::Football.unique.team) }
