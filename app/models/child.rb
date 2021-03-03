class Child < ApplicationRecord
  belongs_to :member

  def full_name
    "#{first_name} #{last_name}"
  end

  def days_attending
    {
      "Monday" => monday?,
      "Tuesday" => tuesday?,
      "Wednesday" => wednesday?,
      "Thursday" => thursday?,
      "Friday" => friday?
    }.select { |_key, value| value == true }
    .keys.join(',')
  end
end
