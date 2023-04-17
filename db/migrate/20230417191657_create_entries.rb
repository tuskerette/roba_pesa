class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.float :kg

      t.timestamps
    end
  end
end
