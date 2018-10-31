require "./lib/dockingstation.rb"

class Bike
  def working?
    true
  end

  def is_in(station_to_check)
    station_to_check.bikes.include? self
  end
end
