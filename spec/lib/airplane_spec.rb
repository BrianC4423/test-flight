require_relative "../../lib/airplane"
require 'pry'
describe Airplane do
    airplane = Airplane.new('Cessna', 100, 180)

  describe "#initialization" do

    describe "#type" do
      it 'returns type of airplane' do
        expect(airplane.type).to eq 'Cessna'
      end
    end

    describe '#wing_load' do
      it 'returns wing load of plane' do
        expect(airplane.wing_load).to eq 100
      end
    end

    describe 'horsepower' do
      it 'returns horsepower of aircraft' do
        expect(airplane.horsepower).to eq 180
      end
    end
  end

  describe "#land" do
    wind_rider = Airplane.new('Concorde', 500, 120)
    it "returns airplane not started" do
      expect(wind_rider.land).to eq 'airplane not started'
    end

    it "returns 'airplane grounded' if flying not true" do
      wind_rider.start
      expect(wind_rider.land).to eq 'airplane grounded'
    end

    it "returns 'airplane landed' if flying, engine_running = true" do
      wind_rider.takeoff
      expect(wind_rider.land).to eq 'airplane landed'
    end
  end

  describe "#takeoff" do
    it "returns 'plane not started, please start' if engine not running" do
      new_plane = Airplane.new('tomcat', 500, 1000)
      expect(new_plane.takeoff).to eq 'plane not started, please start'
    end

    it "returns 'rotate' if engine is running and can proceed to takeoff" do
      new_plane = Airplane.new('tomcat', 500, 1000)
      new_plane.start
      expect(new_plane.takeoff).to eq 'rotate'
    end
  end

  describe "#start" do
    it 'returns started if status_start is false' do
      expect(airplane.start).to eq 'started'
    end

    it 'returns already started if status_start is true' do
      airplane.start
      expect(airplane.start).to eq 'already started'
    end
  end
end
