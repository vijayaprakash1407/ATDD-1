 Feature: Parking feature
 #The parking lot calculator calculates costs for Valet Parking.


Scenario Outline: Calculate Valet Parking Costs
  When I park my car in the <parkinglot> Lot for <parking duration>
  Then I will have to pay <parking costs>

Examples:
  |parkinglot| parking duration | parking costs |
  |Valet Parking| 30 minutes | $ 12.00 |
  |Valet Parking| 3 hours | $ 12.00 |
  |Valet Parking| 5 hours | $ 12.00 |
  |Valet Parking| 5 hours 1 minute | $ 18.00 |
  |Valet Parking| 12 hours | $ 18.00 |
  |Valet Parking| 24 hours | $ 18.00 |
  |Valet Parking| 1 day 1 minute | $ 36.00 |
  |Valet Parking| 3 days | $ 54.00 |
  |Valet Parking| 1 week | $ 126.00 |

