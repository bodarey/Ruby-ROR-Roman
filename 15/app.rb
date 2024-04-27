# frozen_string_literal: true

class Airport
  attr_reader :planes

  def initialize(name)
    @name = name
    @planes = []
  end

  def addplane(plane)
    @planes << plane
  end
end

class Plane
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Country
  attr_reader :airports

  def initialize(name)
    @name = name
    @airports = []
  end

  def add_airport(airport)
    @airports << airport
  end
end
airport1 = Airport.new 'airport1'
airport2 = Airport.new 'airport2'
p1 = Plane.new 'boeing'
p2 = Plane.new 'su-37'

airport1.addplane p1
airport1.addplane p2

airport2.addplane p1
airport2.addplane p2
puts(airport1.planes.each { |p| puts p.name })
eng = Country.new 'England'
eng.add_airport airport1
eng.add_airport airport2
puts eng.airports
