FactoryBot.define do
  
  factory :company do
    id {1}
    name {"Bestattungen Chur"}
    strasse {"Ringstrasse"}
    hnr {"45"}
    plz {"7000"}
    ort {"Chur"}
    tel {"081"}
    email {"bc@bc.ch"}
  end

  factory :verein, class: Company do
    id {2}
    name {"Feuerbestattungsverein Chur"}
    strasse {"Quaderstrasse"}
    hnr {"8"}
    plz {"7002"}
    ort {"Chur"}
    tel {"+41 81 252 59 16"}
    email {"fbv@fbv-chur.ch"}
  end
end