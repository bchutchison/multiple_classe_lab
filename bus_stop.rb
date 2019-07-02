class BusStop

attr_reader :name

def initialize(name)

  @name = name
  @queue = []

end

def queue_count()
  return @queue.size
end

def queue_add_person(person)
  @queue.push(person)
end

def clear_queue()
  @queue.clear
end

def queue_access()
  return @queue
end






























end
