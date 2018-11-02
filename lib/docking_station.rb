require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    #bike.working?
    @bikes << bike#.bike_status
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= capacity
  end
end
