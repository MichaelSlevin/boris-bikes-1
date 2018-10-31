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
