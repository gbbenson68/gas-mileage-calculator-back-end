# frozen_string_literal: true

class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.date :transaction_date, null: false
      t.integer :odometer_reading, null: false
      t.float :price
      t.text :comment
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
