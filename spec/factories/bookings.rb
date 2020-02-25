FactoryBot.define do

  factory :booking, class: Booking do
    vname {"Niemand"}
    nname {"Nixda"}
    birthdate {"23.07.1947"}
    ddate {Date.today - 1}
    lwohnort {"Chur"}
    bdate {Date.today + ((1 - Date.today.wday) % 7)}
    lsdate {Date.today + ((1 - Date.today.wday) % 7) - 3}
  end

  factory :valid_booking, class: Booking do
    vname {"Niemand"}
    sequence(:nname) { |n| "Nixda#{n}" }
    birthdate { "23.07.1947".to_date - rand(10) }
    ddate {Date.today - 5.days}
    lwohnort { ["Chur","Vaz","Trimis"][rand(3)] }
    bdate {Date.today + ((3 - Date.today.wday) % 7)}
    lsdate {Date.today + ((1 - Date.today.wday) % 7) - 3}
    wludate {Time.now + ((6 - Date.today.wday) % 7) - 1}
    company_id {1}
    deliveryoption_id {"1"}
  end

  factory :lsdate_booking, class: Booking do
    vname {"Niemand"}
    sequence(:nname) { |n| "Nixda#{n}" }
    birthdate { "23.07.1947".to_date - rand(10) }
    ddate {Date.today - 5.days}
    lwohnort { ["Chur","Vaz","Trimis"][rand(3)] }
    bdate {Date.today + ((1 - Date.today.wday) % 7)}
    lsdate {Date.today + ((1 - Date.today.wday) % 7) + 10.hours}
    deliveryoption_id {"1"}
  end

  factory :actualbooking do

  end
end