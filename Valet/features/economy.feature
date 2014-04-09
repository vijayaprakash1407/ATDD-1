Feature: Economy Parking feature  The parking lot calculator can calculate costs for Economy  parking.

  Scenario Outline: Calculate Economy Parking Cost
  When I park my car in the <parkinglot> Lot for <parking duration>
  Then I will have to pay <parking costs>

   Examples:
   |parkinglot| parking duration | parking costs |
   |Economy Parking| 30 minutes | $ 2.00 |
   |Economy Parking| 1 hour | $ 2.00 |
   |Economy Parking| 4 hours | $ 8.00 |
   |Economy Parking| 5 hours | $ 9.00 |
   |Economy Parking| 6 hours | $ 9.00 |
   |Economy Parking| 24 hours | $ 9.00 |
   |Economy Parking| 1 day, 1 hour | $ 11.00 |
   |Economy Parking| 1 day, 3 hours | $ 15.00 |
   |Economy Parking| 1 day, 5 hours | $ 18.00 |
   |Economy Parking| 6 days | $ 54.00 |
   |Economy Parking| 6 days, 1 hour | $ 54.00 |
   |Economy Parking| 1 week | $ 54.00 |
   |Economy Parking| 1 week, 2 days | $ 72.00 |
   |Economy Parking| 3 weeks | $ 162.00 |


