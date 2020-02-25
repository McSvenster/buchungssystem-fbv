class CreateDeliveryoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveryoptions do |t|
      t.string :deloption

      t.timestamps
    end
  end
end
