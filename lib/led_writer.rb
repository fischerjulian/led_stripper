
class LEDWriter

  def initialize
    @gpio_r = 17
    @gpio_g = 22
    @gpio_b = 24

    @io = WiringPi::GPIO.new do |gpio|
      [17, 22, 24].each do |pin|
        gpio.pin_mode(pin, WiringPi::OUTPUT)      
      end      
    end
  end

  def write(color = [255, 255, 255])
    @io.pwm_write(@gpio_r, color[0])
    @io.pwm_write(@gpio_g, color[1])
    @io.pwm_write(@gpio_b, color[2])
    true
  end
end