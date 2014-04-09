Feature: Long-Term Garage Parking feature
  The parking lot calculator can calculate costs for Long-Term Garage parking.

  Scenario Outline: Calculate Long-Term Garage Parking Cost
    When I park my car in the <parkinglot> Lot for <parking duration>
    Then I will have to pay <parking costs>

  Examples:
    |parkinglot| parking duration    | parking costs |
    |Long-Term Garage Parking| 30 minutes          | $ 2.00        |
    |Long-Term Garage Parking| 1 hour              | $ 2.00        |
    |Long-Term Garage Parking| 3 hours             | $ 6.00        |
    |Long-Term Garage Parking| 6 hours             | $ 12.00       |
    |Long-Term Garage Parking| 7 hours             | $ 12.00       |
    |Long-Term Garage Parking| 24 hours            | $ 12.00       |
    |Long-Term Garage Parking| 1 day 1 hour       | $ 14.00       |
    |Long-Term Garage Parking| 1 day 3 hours      | $ 18.00       |
    |Long-Term Garage Parking| 1 day 7 hours      | $ 24.00       |
    |Long-Term Garage Parking| 6 days              | $ 72.00       |
    |Long-Term Garage Parking| 6 days 1 hour      | $ 72.00       |
    |Long-Term Garage Parking| 1 week              | $ 72.00       |
    |Long-Term Garage Parking| 1 week 2 days      | $ 96.00       |
    |Long-Term Garage Parking| 3 weeks             | $ 216.00      |


