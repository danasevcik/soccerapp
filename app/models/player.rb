class Player < ApplicationRecord

  belongs_to :team

  validates :name, presence: true
  validate :good_player


  def good_player
    if :decent != true
      errors.add(:decent, "YOU MUST BE A DECENT PLAYER")
    end
  end

end
