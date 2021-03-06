# frozen_string_literal: true

class Reading < ApplicationRecord
  belongs_to :user
  validates :transaction_date,
            :odometer_reading,
            :odometer_units,
            :fuel_amount,
            :fuel_units,
            :user_id,
            presence: true
end
