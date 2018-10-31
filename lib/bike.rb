require "./lib/dockingstation.rb"

class Bike
  attr_accessor :working

  def initialize
    @working = true
  end

  def is_in(station_to_check)
    station_to_check.bikes.include?(self)
  end
end
