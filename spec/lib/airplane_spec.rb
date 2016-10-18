require_relative "../../lib/airplane"


RSpec.describe Airplane do
  my_airplane = Airplane.new("cesna", 10, 150)

  describe "#initialization" do
    it "creates new Airplane" do
      expect(my_airplane.type).to eq("cesna")
      expect(my_airplane.wing_load).to eq(10)
      expect(my_airplane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "starts the engine" do
      expect(my_airplane.start).to eq("Airplane started")
      expect(my_airplane.start).not_to eq("Airplane is already started")
    end
  end

  describe "#takeoff" do
    it "lifts the plane to the air" do
      expect(my_airplane.takeoff).to eq("Up in the air")
    end
  end

  describe "#land" do
    it "lands the plane" do
      expect(my_airplane.land).to eq('Landed safely')
    end
  end

end
