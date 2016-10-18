require_relative "../../lib/airplane"


describe Airplane do
  my_airplane = Airplane.new("cesna", 10, 150)

  describe "#initialization" do
    expect(my_airplane.type).to eq("cesna")
  end

  describe "#start" do
  end

  describe "#land" do
  end

  describe "#takeoff" do
  end
end
