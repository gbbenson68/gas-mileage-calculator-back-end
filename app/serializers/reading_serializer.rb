# frozen_string_literal: true

class ReadingSerializer < ActiveModel::Serializer
  attributes :id,
             :transaction_date,
             :odometer_reading,
             :odometer_units,
             :fuel_amount,
             :fuel_units,
             :price,
             :price_units,
             :comment
  has_one :user
end
