class AddBlocktimeToOption < ActiveRecord::Migration
  def change
    add_column :options, :blocktime, :time
  end
end
