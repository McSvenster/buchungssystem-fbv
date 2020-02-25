class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :strasse
      t.string :hnr
      t.string :plz
      t.string :ort
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
