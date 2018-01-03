require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  describe 'release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end


  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'should raise' do
    docking_station = DockingStation.new
    expect{ docking_station.release_bike }.to raise_error('No bikes available')
  end

  it 'should also raise' do
    bike = Bike.new
    subject.dock(bike)
    bike2 = Bike.new
    expect{ subject.dock(bike2)}.to raise_error('Station is full')
  end

end
