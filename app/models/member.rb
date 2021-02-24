class Member < ApplicationRecord
  has_many :children

  scope :active, -> { where('date_left >= ? OR date_left IS NULL', Date.today) }
end
