class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.references :client, foreign_key: true
      t.string :street
      t.string :city
      t.text :observations

      t.timestamps
    end
  end
end
