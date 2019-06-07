# frozen_string_literal: true

class AddOdometerUnitsToReadings < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :odometer_units, :string, null: false
  end
end
