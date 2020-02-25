json.extract! company, :id, :name, :strasse, :hnr, :plz, :ort, :tel, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
