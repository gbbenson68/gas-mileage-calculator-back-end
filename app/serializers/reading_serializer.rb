class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :transaction_date, :odometer_reading, :price, :comment
  has_one :user
end
