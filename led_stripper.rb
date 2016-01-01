require 'bundler'
Bundler.setup
Bundler.require

require File.join(File.dirname(__FILE__), 'lib', 'atmo', 'measurement')
require File.join(File.dirname(__FILE__), 'lib', 'led_mapper')
require File.join(File.dirname(__FILE__), 'lib', 'led_writer')
