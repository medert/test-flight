require_relative "../../lib/airplane_refactor"
require 'rspec'

#This is the refactored RSpec testing using 'let'

describe Airplane_2 do

  let(:plane) { Airplane_2.new('cesna', 10, 150, 8) }

  describe "#initialization" do
    it "creates new Airplane" do
      expect(plane.type).to eq('cesna')
      expect(plane.horsepower).to eq(10)
      expect(plane.wind_load).to eq(150)
      expect(plane.fuel).to eq(8)
    end
  end

  describe '#start' do
    it "starts the engine" do
      expect(plane.start).to eq("Engine is on!")
    end

    it "has enough fuel to start" do
      plane.start
      expect(plane.fuel).to eq(6)
    end

    it "does not have enough fuel to start the engine" do
      expect(plane.start).not_to eq("Not enough fuel to start the engine!")
    end
  end

  describe '#takeoff' do
    it "lifts the plane to air" do
      plane.start
      expect(plane.takeoff).to eq("The plane in the air!")
      expect(plane.fuel).to eq(4)
    end
  end

  let(:plane_2) { Airplane_2.new('cesna', 10, 150, 7) }

  describe '#land' do
    it 'lands the plane' do
      plane_2.start
      plane_2.takeoff
      expect(plane_2.land).to eq("The plane landed safely!")
      expect(plane_2.fuel).to eq(1)
    end

    let(:plane_3) { Airplane_2.new('cesna', 10, 150, 5) }

    it 'does not have enough fuel to land' do
      plane_3.start
      plane_3.takeoff
      expect(plane_3.land).to eq('Not enough fuel to land!')
      expect(plane_3.fuel).to eq(1)
    end

    let(:plane_4) { Airplane_2.new('cesna', 10, 150, 5) }
    it 'has already landed the plane' do
      plane_4.start
      expect(plane_4.land).to eq('The plane is on the ground!')
      expect(plane_4.fuel).to eq(3)
    end
  end
end
