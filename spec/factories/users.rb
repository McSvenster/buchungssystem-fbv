FactoryBot.define do

  factory :planer, class: User do
    email {"planer@none.org"}
    vname {"Planer"}
    nname {"Imhaus"}
    # association :company, id: 1
    company_id {1}
    plz {"7000"}
    ort {"Chur"}
    tel {"081"}
    role {2}
    password {"test"}
    password_confirmation {"test"}
  end

  factory :bestatter, class: User do
    email {"nr1@bestattung.org"}
    vname {"Bestatter"}
    nname {"Nr1"}
    # association :company, id: 2
    company_id {2}
    plz {"7000"}
    ort {"Chur"}
    tel {"081"}
    role {3}
    password {"test"}
    password_confirmation {"test"}
  end
  
end