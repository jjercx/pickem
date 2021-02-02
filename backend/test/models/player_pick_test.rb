# == Schema Information
#
# Table name: player_picks
#
#  id              :bigint           not null, primary key
#  pick_id         :bigint           not null
#  player_id       :bigint           not null
#  selected_option :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class PlayerPickTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
