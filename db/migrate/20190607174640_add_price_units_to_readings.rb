# frozen_string_literal: true

class AddPriceUnitsToReadings < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :price_units, :string
  end
end
