require 'rails_helper'

RSpec.describe Car, :type => :model do

  it { should have_valid(:manufacturer).when('GM')}
  it { should_not have_valid(:manufacturer).when(nil,'')}

  it { should have_valid(:color).when('Blue')}
  it { should_not have_valid(:color).when(nil,'')}

  it { should have_valid(:year).when(1920)}
  it { should_not have_valid(:year).when(1919)}
  it { should_not have_valid(:year).when(nil,'')}

  it { should have_valid(:mileage).when(100,000)}
  it { should_not have_valid(:mileage).when(nil,'')}
end
