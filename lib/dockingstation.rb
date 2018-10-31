require "./lib/bike.rb"

class DockingStation

  attr_reader :bikes
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes docked' if empty?
    fail 'Can\'t release broken bikes' if @bikes.select { |b| b.working }.size == 0
    @bikes.size.times do
      if @bikes[0].working
        return @bikes.shift
      else
        @bikes.rotate!
      end
    end
  end

  def dock(bike, works=true)
    fail 'Docking station full' if full?
    bike.working = false unless works
    @bikes.push(bike)
  end

  private

  def empty?
    return @bikes.empty?
  end

  def full?
    return @bikes.size >= @capacity
  end

end
