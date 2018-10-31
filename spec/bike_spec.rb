require "bike"
require "dockingstation"

describe Bike do
  let(:ds) { DockingStation.new }
  let(:bike) { Bike.new }
  it { expect(subject).to respond_to(:working) }
  it "bike is in a given docking station" do
    ds.dock(bike)
    expect(bike.is_in(ds)).to eq(true)
  end
end
