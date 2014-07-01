RSpec.describe Manufacturer, :type => :model do
  it { should have_valid(:name).when('GM')}
  it { should_not have_valid(:name).when(nil,'')}

  it { should have_valid(:country).when('Italy')}
  it { should_not have_valid(:country).when(nil,'')}
end

