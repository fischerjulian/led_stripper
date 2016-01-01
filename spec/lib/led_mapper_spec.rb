require File.join(File.dirname(__FILE__), '..', '..', 'led_stripper')


RSpec.describe LEDMapper do
  before(:all) do
    @mapper = LEDMapper.new
  end

  context "static map" do
    it "should be a green for a co2 value of 0ppm" do
      expect(@mapper.map(Atmo::Measurement.new(co2: 0))).to eql([0,255,0])
    end

    it "should be a green for a co2 value of 500ppm" do
      expect(@mapper.map(Atmo::Measurement.new(co2: 500))).to eql([0,255,0])
    end

    it "should be yellow for a co2 value of 1000pm" do
      expect(@mapper.map(Atmo::Measurement.new(co2: 1000))).to eql([255,245,0])
    end

    it "should be red for a co2 value of 2000pm" do
      expect(@mapper.map(Atmo::Measurement.new(co2: 2000))).to eql([255,0,0])
    end    

    it "should be red for a co2 value above 2000pm" do
      expect(@mapper.map(Atmo::Measurement.new(co2: 3000))).to eql([255,0,0])
    end    
  end
end