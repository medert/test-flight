require 'pry'

class Airplane
  attr_accessor :type, :wing_load, :horsepower
  def initialize (type, wing_load, horsepower)
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @ground = true
    @engine = false
  end

end
