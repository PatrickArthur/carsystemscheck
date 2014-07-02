class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer, presence: true
  validates :color, presence: true
  validates :year, presence: true
  validates :year,
    numericality: {
      greater_than_or_equal_to: 1920,
      less_than_or_equal_to: Time.now.year
    }
  validates :mileage,
    numericality: {
      greater_than_or_equal_to: 0
    }
end
