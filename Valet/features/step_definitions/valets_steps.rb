
When(/^I park my car in the (.*) Lot for (.*)$/) do |lot, duration|
  $parkcalc.select_parking_lot(lot)
  $parkcalc.enter_parking_duration(duration)
end

Then(/^I will have to pay (.*)$/) do |price|
  $parkcalc.parking_costs.should eq(price),
    "Expected price to be #{@price}, instead got #{@actual_cost}"
end