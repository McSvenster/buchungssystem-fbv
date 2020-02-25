class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :company_id
      t.string :vname
      t.string :nname
      t.date :birthdate
      t.string :lwohnort
      t.datetime :ddate
      t.datetime :lsdate
      t.date :bdate
      t.time :btime
      t.datetime :wludate
      t.boolean :approved
      t.integer :deliveryoption_id
      t.boolean :provided
      t.string :created_by
      t.boolean :deleted

      t.timestamps
    end
  end
end
