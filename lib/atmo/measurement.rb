module Atmo
  class Measurement
    
    attr_accessor :co2

    def initialize(attributes)
      @co2 = attributes[:co2] || 0
    end

    # ./netatmo-client.py
    # Indoor: 20.1°C (60%, 1025mbar, 1444ppm CO2), outdoor: 11.9°C (87%)
    # ./netatmo-client.py -c
    # 21.6;45;1019;878;10.6;69
    def self.build_from_csv(csv_str)
      raw_data = csv_str.split(";")
      new(co2: raw_data[3].to_i)
    end
  end
end