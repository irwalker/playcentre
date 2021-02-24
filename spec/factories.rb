FactoryBot.define do
  factory :member do
    family_id { 'WAL090' }
    attending_parent { 'Tania Walker' }
    date_joined { Date.new(2020, 5, 1) }
    comments { 'Legend of the community' }
    parents { 'Tania & Iain Walker' }
    parents_email { 'tanzjacob@gmail.com' }
    alternate_contact { 'iain.rh.walker@gmail.com' }
    mobile { '0274246931' }
    address { '50A Norton Park Ave' }
    first_aid_expiry { Date.today + 1.year }
    duty_day { 'Friday' }
  end

  factory :child do
    first_name { 'Maria' }
    last_name { 'Walker' }
    date_joined { Date.new(2020, 5, 1) }
    birthday { Date.new(2019, 9, 7) }
    tuesday { true }
    thursday { true }
    friday { true }
    gender { 'F' }
    ethnicity { 'Indian/European' }
    language { 'English, Malayalam' }
  end
end
