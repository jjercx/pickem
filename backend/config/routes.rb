# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :auth, only: [] do
        collection do
          post 'log_in', to: 'auth#log_in'
          post 'sign_up', to: 'auth#sign_up'
        end
      end
    end
  end
end
