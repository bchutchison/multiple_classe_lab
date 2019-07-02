require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')


class BusTest < MiniTest::Test




 def setup()
   @bus = Bus.new("22", "Ocean Terminal")
   @passenger_1 = Person.new("Mat", 34)
   @passenger_2 = Person.new("Mat", 34)
   @bus_stop_1 = BusStop.new("Drum Brae")
 end


 def test_route_number()
   assert_equal("22", @bus.route_number)
 end

 def test_destination()
   assert_equal("Ocean Terminal", @bus.destination())
 end

 def test_bus_drive()
   assert_equal("Brum brum", @bus.bus_drive())
 end

 def test_number_of_passengers()
   assert_equal(0, @bus.passenger_count())
 end

 def test_add_passenger()
   @bus.add_passenger(@passenger_1)
   assert_equal(1, @bus.passenger_count())
 end

 def test_drop_off_passenger()
   @bus.add_passenger(@passenger_1)
   @bus.add_passenger(@passenger_2)
   @bus.remove_passenger(@passenger_1)
   assert_equal(1, @bus.passenger_count())
 end

 def test_drop_off_passenger__all_passengers()
   @bus.add_passenger(@passenger_1)
   @bus.add_passenger(@passenger_1)
   @bus.add_passenger(@passenger_1)
   @bus.empty_bus()
   assert_equal(0, @bus.passenger_count())
 end

 def test_collect_all_passengers_from_stop()
   @bus.collect_all_passengers(@bus_stop_1)
   assert_equal(0, @bus.passenger_count())
 end







end
