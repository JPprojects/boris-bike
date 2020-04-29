require "../lib/docking_station.rb"

describe DockingStation do
  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it "Docking station should release bike" do
        docking_1 = DockingStation.new
        expect(docking_1.release_bike).to be_instance_of Bike
    end

    it "Released bike should be working" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1).respond_to?(docking_station_1.release_bike.working?)
    end

    it "does not release a bike if none available" do
      docking_station_1 = DockingStation.new
      docking_station_1.available = false
      expect{docking_station_1.release_bike}.to raise_error "bike is not available"
    end
  end

  describe '#dock_a_bike'do
    it "docking a bike in a station" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1.dock_a_bike).to eq(true)
    end
  end

  describe '#bike.available' do
    it "check if dock has a bike" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1.available).to eq(true)
    end
  end
end
