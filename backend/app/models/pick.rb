# frozen_string_literal: true

# == Schema Information
#
# Table name: picks
#
#  id               :bigint           not null, primary key
#  game_id          :bigint           not null
#  question_id      :bigint           not null
#  right_option     :integer          default(0), not null
#  date             :date
#  option_a_count   :integer          default(0)
#  option_b_count   :integer          default(0)
#  option_a_percent :float            default(0.0)
#  option_b_percent :float            default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Pick < ApplicationRecord
  belongs_to :game
  belongs_to :question
end
