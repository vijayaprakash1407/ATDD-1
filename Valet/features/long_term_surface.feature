Feature: Long-Term Surface Parking feature
  The parking lot calculator can calculate costs for Long-Term Surface parking.

  Scenario Outline: Calculate Long-Term Surface Parking Cost
    When I park my car in the <parkinglot> Lot for <parking duration>
    Then I will have to pay <parking costs>

  Examples:
    |parkinglot| parking duration    | parking costs |
    |Long-Term Surface Parking| 30 minutes      | $ 2.00        |
    |Long-Term Surface Parking| 1 hour          | $ 2.00        |
    |Long-Term Surface Parking| 5 hours         | $ 10.00       |
    |Long-Term Surface Parking| 6 hours         | $ 10.00       |
    |Long-Term Surface Parking| 24 hours        | $ 10.00       |
    |Long-Term Surface Parking| 1 day 1 hour    | $ 12.00       |
    |Long-Term Surface Parking| 1 day 3 hours   | $ 16.00       |
    |Long-Term Surface Parking| 1 day 6 hours   | $ 20.00       |
    |Long-Term Surface Parking| 6 days          | $ 60.00       |
    |Long-Term Surface Parking| 6 days 1 hour   | $ 60.00       |
    |Long-Term Surface Parking| 1 week          | $ 60.00       |
    |Long-Term Surface Parking| 1 week 2 days   | $ 80.00       |
    |Long-Term Surface Parking| 3 weeks         | $ 180.00      |

