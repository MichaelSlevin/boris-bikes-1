require "dockingstation"

describe DockingStation do
  let(:dockingstation) { DockingStation.new }
  it { expect(dockingstation).to respond_to(:release_bike) }
  it { expect(dockingstation).to respond_to(:bikes) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { expect{ DockingStation.new.release_bike }.to raise_error 'No bikes docked' }
  it "Cannot dock a bike when the docking station is at capacity" do
    empty_ds = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { empty_ds.dock(Bike.new) }
    expect{empty_ds.dock(Bike.new)}.to raise_error 'Docking station full'
  end
  it "Docking station can hold #{DockingStation::DEFAULT_CAPACITY} bikes" do
    full_ds = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { full_ds.dock(Bike.new) }
    expect(full_ds.bikes.size).to eq(DockingStation::DEFAULT_CAPACITY)
  end
  it { expect(DockingStation.new(10).capacity).to eq(10) }
end
