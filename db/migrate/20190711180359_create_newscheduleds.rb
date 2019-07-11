class CreateNewscheduleds < ActiveRecord::Migration[5.0]
  def change
    create_table :newscheduleds do |t|
      t.decimal :total
      t.references :discount, foreign_key: true
      t.references :client, foreign_key: true
      t.text :observations
      t.integer :status
      t.date :date
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
