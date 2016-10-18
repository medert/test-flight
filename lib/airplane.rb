require 'pry'

class Airplane
  attr_accessor :type, :wing_load, :horsepower
  def initialize (type, wing_load, horsepower)
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @engine = false
    @ground = true
  end

  def start
    if @engine == false
      @engine = true
      return 'Airplane started'
    else
      return 'already started'
    end

  end

  def land
    if @engine == true && @ground == false
      @engine = false
      @ground = true
      return 'Landed safely'
    end
  end

  def takeoff
    if @engine == false
      @engine = true
      @ground = false
      puts "Up in the air"
    else
      @ground = false
      return "Up in the air"
    end
  end

end
