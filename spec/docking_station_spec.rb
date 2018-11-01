require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      end

    it 'raises an error when no bikes to release' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end
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
