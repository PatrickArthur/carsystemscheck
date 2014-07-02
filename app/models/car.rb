class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates_presence_of :manufacturer
  validates_presence_of :color
  validates_presence_of :year
  validates_numericality_of :year, greater_than_or_equal_to: 1920
  validates_presence_of :mileage
end
