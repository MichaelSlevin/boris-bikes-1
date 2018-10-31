require "dockingstation"

describe DockingStation do
  let(:dockingstation) { DockingStation.new }
  it { expect(dockingstation).to respond_to(:release_bike) }
  it { expect(dockingstation).to respond_to(:bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { expect{ DockingStation.new.release_bike }.to raise_error 'No bikes docked' }
end
