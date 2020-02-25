json.extract! booking, :id, :company_id, :vname, :nname, :birthdate, :lwohnort, :ddate, :lsdate, :bdate, :btime, :wludate, :approved, :deliveryoption_id, :provided, :created_by, :deleted, :created_at, :updated_at
json.url booking_url(booking, format: :json)
