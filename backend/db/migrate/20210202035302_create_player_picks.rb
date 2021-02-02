# frozen_string_literal: true

class CreatePlayerPicks < ActiveRecord::Migration[6.1]
  def change
    create_table :player_picks do |t|
      t.references :pick, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.integer :selected_option, null: true

      t.timestamps
    end
  end
end
