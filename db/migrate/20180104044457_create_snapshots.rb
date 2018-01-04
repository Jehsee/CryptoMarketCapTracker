class CreateSnapshots < ActiveRecord::Migration[5.1]
  def change
    create_table :snapshots do |t|
      t.date :date
      t.string :payload

      t.timestamps
    end
  end
end
