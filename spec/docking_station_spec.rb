require 'docking_station'

describe DockingStation do

  it 'expects to respond to #bikes' do
    expect(subject).to respond_to(:bikes)
  end


  describe 'initialization' do

    it 'expect to have a starting value' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end

    # subject { DockingStation.new }
    # let(:bike) { Bike.new }
    # it 'defaults capacity' do
    #   described_class::DEFAULT_CAPACITY.times do
    #     subject.dock(bike)
    #   end
    #   expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    # end
    # 

  end



  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike}

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      end

    it 'raises an error when no bikes to release' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end

  end


  describe '#dock' do

    it 'expects to respond a #dock with 1 arg' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'expects to store an instance of Bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'expects to return an instance of bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

  end

end
