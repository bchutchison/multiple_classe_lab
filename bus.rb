class Bus


attr_reader :route_number, :destination

def initialize(route_number, destination)

  @route_number = route_number
  @destination = destination
  @passengers = []

end

def bus_drive()
  return "Brum brum"
end

def passenger_count()
  return @passengers.size
end

def add_passenger(passenger)
  @passengers.push(passenger)
end

def remove_passenger(passenger)
  @passengers.delete(passenger)
end

def empty_bus()
  @passengers.clear
end

def collect_all_passengers(bus_stop)
  @passengers.push(bus_stop.queue_access).flatten!
end






end
