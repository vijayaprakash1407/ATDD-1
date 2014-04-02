require "watir-webdriver"
require 'rspec/expectations'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'parkcalc')
browser = Watir::Browser.new
#$parkcalc = Watir::Browser.start "http://www.shino.de/parkcalc"
$parkcalc = ParkCalcPage.new(browser)


# after all
#at_exit do
#parkcalc.close
#end
