
When(/^I park my car in the Valet Parking Lot for (\d+) minutes$/) do |duration|
  $parkcalc.select_parking_lot('Valet Parking')
  $parkcalc.enter_parking_duration(duration)
end

Then(/^I will have to pay (.*)$/) do |price|
  $parkcalc.parking_costs.should eq(price),
    "Expected price to be #{@price}, instead got #{@actual_cost}"
end