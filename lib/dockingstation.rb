require "./lib/bike.rb"

class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    fail 'No bikes docked' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
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
