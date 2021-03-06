require File.join(File.dirname(__FILE__), '..', '..', 'led_stripper')


RSpec.describe LEDWriter do
  before(:all) do
    @writer = LEDWriter.new
  end

  
  it "should write a white color" do
    expect(@writer.write([255,255,255])).to be true
    sleep 2
  end

  it "should write a black color" do
    expect(@writer.write([0,0,0])).to be true
    sleep 2
  end
end