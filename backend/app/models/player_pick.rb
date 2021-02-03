# frozen_string_literal: true

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
class PlayerPick < ApplicationRecord
  belongs_to :pick
  belongs_to :player

  enum selected_option: %i[a b]
end
