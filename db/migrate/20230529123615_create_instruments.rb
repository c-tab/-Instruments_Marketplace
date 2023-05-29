class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :type
      t.integer :price
      t.integer :serial
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
