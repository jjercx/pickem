# == Schema Information
#
# Table name: picks
#
#  id               :bigint           not null, primary key
#  game_id          :bigint           not null
#  question_id      :bigint           not null
#  right_option     :integer
#  date             :date
#  option_a_count   :integer          default(0)
#  option_b_count   :integer          default(0)
#  option_a_percent :float            default(0.0)
#  option_b_percent :float            default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class PickTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
