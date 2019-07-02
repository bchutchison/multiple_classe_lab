require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')


class BusStopTest < MiniTest::Test


def setup

@bus_stop = BusStop.new("Drum Brae")
@passenger_1 = Person.new("Mat", 34)
@passenger_2 = Person.new("Mat", 34)

end

def test_queue_add_person()
  @bus_stop.queue_add_person(@passenger_1)
  assert_equal(1, @bus_stop.queue_count())
end






























end
