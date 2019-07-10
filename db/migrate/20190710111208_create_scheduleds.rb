class CreateScheduleds < ActiveRecord::Migration[5.0]
  def change
    create_table :scheduleds do |t|
      t.decimal :total
      t.references :client, foreign_key: true
      t.date :date
      t.references :service, foreign_key: true
      t.references :discount, foreign_key: true
      t.string :start
      t.string :end
      t.text :observations
      t.integer :status

      t.timestamps
    end
  end
end
