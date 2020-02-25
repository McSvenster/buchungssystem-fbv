class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.date :date
      t.integer :slots
      t.integer :bdates
      t.time :blocktime

      t.timestamps
    end
  end
end
