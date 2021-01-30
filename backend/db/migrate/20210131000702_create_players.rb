# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
