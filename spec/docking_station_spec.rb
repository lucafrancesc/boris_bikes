require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'expects to return a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'expects to dock a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end
