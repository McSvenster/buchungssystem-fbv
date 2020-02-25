json.extract! user, :id, :email, :vname, :nname, :company_id, :password_digest, :strasse, :hnr, :plz, :ort, :tel, :role, :onetimetoken, :created_at, :updated_at
json.url user_url(user, format: :json)
