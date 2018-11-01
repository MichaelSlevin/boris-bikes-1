require 'require_all'
require_all "./lib/"

p "new docking station called ds"
ds = DockingStation.new
p "new bike called bike"
bike = Bike.new
"puts bike in ds"
ds.dock(bike)
"checks if bike is in ds"
p bike.is_in(ds)
p "checks if error is raised when bike is taken from empty docking station"
begin
  empty_ds = DockingStation.new
  p empty_ds.release_bike
rescue
  p "error has been raised successfully"
else
  p "test failed, no error raised"
end

p "checks for error when docking too many bikes"
begin
  full_ds = DockingStation.new
  full_ds.dock(Bike.new)
  full_ds.dock(Bike.new)
rescue
  p "error raised when docking 2nd bike"
else
  p "test failed, no error raised when docking 2nd bike"
end
p "Default cap for dockinS should be 20"
p DockingStation::DEFAULT_CAPACITY

p "Checking that capacity can be set on instantiation of docking station"
puts DockingStation.new(5).capacity == 5
p "Checking default capacity is 20"
puts DockingStation.new.capacity == 20

p "Checking that broken bike can't be released from a docking station"
begin
  empty_ds = DockingStation.new
  empty_ds.dock(Bike.new, false)
  empty_ds.release_bike
rescue
  p "Can't release the broken bike"
else
  p "It gave me a broken bike"
end

p "Checking that a working bike can be released from a docking station that has
a broken bike"

empty_ds = DockingStation.new
working_bike = Bike.new
breaking_bike = Bike.new
empty_ds.dock(breaking_bike, false)
empty_ds.dock(working_bike)
p empty_ds.release_bike
