require "../docking_station.rb"

describe DockingStation do
  describe '#release_bike' do
    it "Docking station should release bike" do
        docking_1 = DockingStation.new
        expect(docking_1.release_bike("bike1")).to be_instance_of Bike
    end

    it "Released bike should be working" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1).respond_to?(docking_station_1.release_bike("bike1").working?)
    end

    it "does not release a bike if none available" do
      docking_station_1 = DockingStation.new
      expect{docking_station_1.release_bike("unavailable")}.to raise_error "bike is not available"
    end
  end

  describe '#dock_a_bike'do
    it "docking a bike in a station" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1.dock_a_bike("bike 1")).to eq("bike 1 has docked")
    end
  end

  describe '#bike_available?' do
    it "check if dock has a bike" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1.bike_available?("bike1")).to eq(true)
    end
  end
end
