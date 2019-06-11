# frozen_string_literal: true

class ChangeFuelAmountToBeFloatInReading < ActiveRecord::Migration[5.2]
  def up
    change_column :readings, :fuel_amount, :float, null: false
  end

  def down
    change_column :readings, :fuel_amount, :integer, null: false
  end
end
