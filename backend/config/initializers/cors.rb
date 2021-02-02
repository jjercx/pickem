# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV['FRONT_URL'] || '*'
    resource '*', headers: :any, methods: %i[get post patch put]
  end
end
