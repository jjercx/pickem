class PlayerPick < ApplicationRecord
  belongs_to :pick
  belongs_to :player
end
