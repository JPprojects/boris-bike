require "bike.rb"

class DockingStation
  attr_reader :available
  attr_writer :available

  def initialize
    @available = true
  end

  def release_bike
    if @available
      @available = false
      Bike.new
    else
      fail "bike is not available"
    end
  end

  def dock_a_bike
    @available = true
    return @available
  end
end
