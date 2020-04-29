require "../lib/bike.rb"

describe "Bike class" do
  it "checks if the bike is working" do
  expect(Bike.new).to be_instance_of Bike
  end

  it "responds to working?" do
    bikeworking = Bike.new
    expect(bikeworking).respond_to?(bikeworking.working?)
  end
  
end
