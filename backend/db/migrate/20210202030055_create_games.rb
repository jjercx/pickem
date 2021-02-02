# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :local_team, null: false, foreign_key: { to_table: :teams }
      t.references :visitor_team, null: false, foreign_key: { to_table: :teams }
      t.date :date

      t.timestamps
    end
  end
end
