require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'expected to return a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
