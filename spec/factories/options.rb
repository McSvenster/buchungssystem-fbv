FactoryBot.define do

  factory :defaults, class: Option do
    date {"0001-01-01"}
    slots {8}
    bdates {10}
  end

end