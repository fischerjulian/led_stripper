class LEDMapper

  def map(measurement)
    static_map(measurement)
  end

  def static_map(measurement)    
    # r,g,b
    red, green, blue = 0, 255, 0
    co2 = measurement.co2

    # 0 = [0, 255, 0]
    # yellow to red by decreasing the green factor      
    # 1000 => [255, 255, 0] = 255
    # 1500 => [255, 0, 0] = 0

    if co2 >= 500 && co2 < 1000 then
      # y = 255/500 * x - 255
      red = ((255/500.0) * co2 - 255).to_i
    elsif co2 >= 1000 then
      red = 255

      if co2 < 2000 then
        # y = -255/1000 * x + 500
        green = ((-255/1000.0) * co2 + 500).to_i
      else
        green = 0
      end
    end

    [red, green, blue]
  end
end
