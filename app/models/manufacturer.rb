class Manufacturer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :country
end
