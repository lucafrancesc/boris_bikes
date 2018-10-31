require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'expects to return a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'expects to respond a #dock with 1 arg' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'expects to respond to #bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'expects to store an instance of Bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'expects to return an instance of bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
