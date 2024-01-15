class AddPeriodToEntry < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :period, :boolean, default: false
  end
end
