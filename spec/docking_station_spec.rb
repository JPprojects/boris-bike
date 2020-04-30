require "../lib/docking_station.rb"

describe DockingStation do
  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

    it "Docking station should release bike" do
        docking_1 = DockingStation.new
        docking_1.capacity = ["bike1"]
        expect(docking_1.release_bike).to be_instance_of Bike
    end

    it "Released bike should be working" do
      docking_station_1 = DockingStation.new
      docking_station_1.capacity = ["bike0"]
      expect(docking_station_1).respond_to?(docking_station_1.release_bike.working?)
    end

    it "does not release a bike if none available" do
      docking_station_1 = DockingStation.new
      expect{docking_station_1.release_bike}.to raise_error "bike unavaliable"
    end
  end

  describe '#dock_a_bike'do
    it "docking a bike in a station" do
      docking_station_1 = DockingStation.new
      expect(docking_station_1.dock_a_bike("bike1")).to eq("bike1 has been docked")
    end

    it "do not allow bike to be docked if dock full" do
      docking_station_1 = subject
      DockingStation::DEFAULT_CAPACITY.times{docking_station_1.dock_a_bike("bike10")}
      expect{docking_station_1.dock_a_bike("bike11")}.to raise_error("dock full")
    end
  end

  describe 'is bike available' do
    it "check if dock has a bike" do
      docking_station_1 = DockingStation.new
      docking_station_1.capacity = ["bike1"]
      expect(docking_station_1.check_capacity).to eq(true)
    end
  end
end
