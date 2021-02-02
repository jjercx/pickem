# frozen_string_literal: true

class CreatePicks < ActiveRecord::Migration[6.1]
  def change
    create_table :picks do |t|
      t.references :game, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :right_option, null: false, default: 0
      t.date :date
      t.integer :option_a_count, default: 0
      t.integer :option_b_count, default: 0
      t.float :option_a_percent, default: 0
      t.float :option_b_percent, default: 0

      t.timestamps
    end
  end
end
