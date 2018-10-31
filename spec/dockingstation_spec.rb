require "dockingstation"

describe DockingStation do
  let(:dockingstation) { DockingStation.new }
  it { expect(dockingstation).to respond_to(:release_bike) }
  it { expect(dockingstation.release_bike.working?).to eq(true) }
  it { expect(dockingstation).to respond_to(:bikes) }
  it { is_expected.to respond_to(:dock).with(1).argument }
end
