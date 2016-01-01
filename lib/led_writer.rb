
class LEDWriter

  def initialize
    @gpio_r = 17
    @gpio_g = 22
    @gpio_b = 24

    @io = WiringPi::GPIO.new do |gpio|
      gpio.pin_mode(@gpio_r, WiringPi::OUTPUT)      
      gpio.pin_mode(@gpio_g, WiringPi::OUTPUT)      
      gpio.pin_mode(@gpio_b, WiringPi::OUTPUT)      
    end
  end

  def write(color = [255, 255, 255])
    @io.pwm_write(@gpio_r, color[0])
    @io.pwm_write(@gpio_g, color[1])
    @io.pwm_write(@gpio_b, color[2])
  end
end