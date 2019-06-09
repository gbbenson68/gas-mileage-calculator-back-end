# frozen_string_literal: true

class AddFuelAmountFuelUnitsToReading < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :fuel_amount, :integer, null: false
    add_column :readings, :fuel_units, :string, null: false
  end
end
