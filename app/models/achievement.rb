class Achievement < ApplicationRecord

  has_many :endorsement

  validates :name, length: {minimum: 1}

end
