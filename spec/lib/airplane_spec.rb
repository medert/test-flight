require_relative "../../lib/airplane"
require 'rspec'

#practising RSpec testing

RSpec.describe Airplane do
  my_airplane = Airplane.new("cesna", 10, 150, 10)

  describe "#initialization" do
    it "creates new Airplane" do
      expect(my_airplane.type).to eq("cesna")
      expect(my_airplane.wing_load).to eq(10)
      expect(my_airplane.horsepower).to eq(150)
      expect(my_airplane.fuel).to eq(10)
    end
  end

  describe "#start" do
    it "starts the engine" do
      expect(my_airplane.start).to eq("Airplane started")
    end

    it "is already strated" do
      my_airplane.start
      expect(my_airplane.start).to eq("Airplane is already started")
    end

    it "has enough fuel to start" do
      my_airplane.start
      expect(my_airplane.fuel).to eq(8)
    end

    it "does not have enough fuel to start" do
      my_airplane = Airplane.new("cesna", 10, 150, 1)
      expect(my_airplane.start).to eq("Not enough fuel to start")
    end
  end

  describe "#takeoff" do
    it "lifts the plane to the air" do
      my_airplane = Airplane.new("cesna", 10, 150, 8)
      my_airplane.start
      expect(my_airplane.takeoff).to eq("Airplane took off!")
      expect(my_airplane.takeoff).to eq("Not enough fuel to takeoff!")
    end

    it "has INSIFICIENT fuel to takeoff" do
      my_airplane = Airplane.new("cesna", 10, 150, 2)
      my_airplane.start
      expect(my_airplane.takeoff).to eq("Not enough fuel to takeoff!")
      expect(my_airplane.takeoff).not_to eq("Airplane took off!")
    end
  end

  describe "#land" do
    it "has enough fuel to land" do
      my_airplane = Airplane.new("cesna", 10, 150, 7)
      my_airplane.start
      my_airplane.takeoff
      expect(my_airplane.land).to eq('Landed safely!')
    end

    it "has INSIFICIENT fuel to land" do
      my_airplane = Airplane.new("cesna", 10, 150, 6)
      my_airplane.start
      my_airplane.takeoff
      expect(my_airplane.land).to eq('Not enough fuel to land!')
    end

    it "is on the ground" do
      my_airplane = Airplane.new("cesna", 10, 150, 3)
      my_airplane.start
      expect(my_airplane.land).to eq('The plane is on the ground!')
    end

    it "is on the ground, the engine is turned off" do
      my_airplane = Airplane.new("cesna", 10, 150, 2)
      expect(my_airplane.land).to eq('The engine is turned off! The plane is on the ground!')
    end
  end
end
