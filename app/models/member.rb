class Member < ApplicationRecord
  scope :active, -> { where('date_left >= ? OR date_left IS NULL', Date.today) }
end
