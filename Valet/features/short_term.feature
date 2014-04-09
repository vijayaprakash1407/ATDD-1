Feature: Short Term Parking feature
#The parking lot calculator calculates costs for Short Term Parking.

Scenario Outline: Calculate Short-Term Parking Cost
When I park my car in the <parkinglot> Lot for <parking duration>
Then I will have to pay <parking costs>

Examples:
  |parkinglot| parking duration | parking costs |
  |Short-Term Parking| 30 minutes | $ 2.00 |
  |Short-Term Parking| 1 hour | $ 2.00 |
  |Short-Term Parking| 1 hour 30 minutes | $ 3.00 |
  |Short-Term Parking| 2 hours | $ 4.00 |
  |Short-Term Parking| 3 hours 30 minutes | $ 7.00 |
  |Short-Term Parking| 12 hours 30 minutes| $ 24.00 |
  |Short-Term Parking| 1 day 30 minutes | $ 25.00 |
  |Short-Term Parking| 1 day 1 hour | $ 26.00 |