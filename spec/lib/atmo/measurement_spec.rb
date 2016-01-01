require File.join(File.dirname(__FILE__), '..', '..', '..', 'led_stripper')


RSpec.describe Atmo::Measurement do
  before(:all) do
    # Indoor: 21.6°C (45%, 1019mbar, 878ppm CO2), outdoor: 10.6°C (60%)
    @csv = "21.6;45;1019;878;10.6;69"
  end

  it "should create a measurement from a csv string" do
    measurement = Atmo::Measurement.build_from_csv(@csv)
    expect(measurement.co2).to eql(878)    
  end
end