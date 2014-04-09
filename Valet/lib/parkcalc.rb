class ParkCalcPage

  @@startingPrefix = 'Starting'
  @@leavingPrefix = 'Leaving'

  @@durationMap = {
      '30 minutes'          => ['05/04/2014', '12:00', 'AM', '05/04/2014', '12:30', 'AM'],
      '1 hour'              => ['05/04/2014', '12:00', 'AM', '05/04/2014', '01:00', 'AM'],
      '1 hour 30 minutes'   => ['05/04/2014', '12:00', 'AM', '05/04/2014', '01:30', 'AM'],
      '2 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '02:00', 'AM'],
      '3 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '03:00', 'AM'],
      '4 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '04:00', 'AM'],
      '3 hours 30 minutes'  => ['05/04/2014', '12:00', 'AM', '05/04/2014', '03:30', 'AM'],
      '5 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '05:00', 'AM'],
      '5 hours 1 minute'    => ['05/04/2014', '12:00', 'AM', '05/04/2014', '05:01', 'AM'],
      '6 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '06:00', 'AM'],
      '7 hours'             => ['05/04/2014', '12:00', 'AM', '05/04/2014', '07:00', 'AM'],
      '12 hours'            => ['05/04/2014', '12:00', 'AM', '05/04/2014', '12:00', 'PM'],
      '12 hours 30 minutes' => ['05/04/2014', '12:00', 'AM', '05/04/2014', '12:30', 'PM'],
      '24 hours'            => ['05/04/2014', '12:00', 'AM', '05/05/2014', '12:00', 'AM'],
      '1 day 1 minute'      => ['05/04/2014', '12:00', 'AM', '05/05/2014', '12:01', 'AM'],
      '1 day 30 minutes'    => ['05/04/2014', '12:00', 'AM', '05/05/2014', '12:30', 'AM'],
      '1 day 1 hour'        => ['05/04/2014', '12:00', 'AM', '05/05/2014', '01:00', 'AM'],
      '1 day 3 hours'       => ['05/04/2014', '12:00', 'AM', '05/05/2014', '03:00', 'AM'],
      '1 day 5 hours'       => ['05/04/2014', '12:00', 'AM', '05/05/2014', '05:00', 'AM'],
      '1 day 6 hours'       => ['05/04/2014', '12:00', 'AM', '05/05/2014', '06:00', 'AM'],
      '1 day 7 hours'       => ['05/04/2014', '12:00', 'AM', '05/05/2014', '07:00', 'AM'],
      '3 days'              => ['05/04/2014', '12:00', 'AM', '05/07/2014', '12:00', 'AM'],
      '6 days'              => ['05/04/2014', '12:00', 'AM', '05/10/2014', '12:00', 'AM'],
      '6 days 1 hour'       => ['05/04/2014', '12:00', 'AM', '05/10/2014', '01:00', 'AM'],
      '1 week'              => ['05/04/2014', '12:00', 'AM', '05/11/2014', '12:00', 'AM'],
      '1 week 2 days'       => ['05/04/2014', '12:00', 'AM', '05/13/2014', '12:00', 'AM'],
      '3 weeks'             => ['05/04/2014', '12:00', 'AM', '05/25/2014', '12:00', 'AM'],
  }

  attr :page


  def initialize(page_handle)
     @page = page_handle
     @page.goto"http://www.shino.de/parkcalc"
  end

  def select_parking_lot(parking_lot)
    @page.select_list(:id =>'ParkingLot').select(parking_lot)
  end

  def enter_parking_duration(duration)
    startingDate, startingTime, startingTimeAMPM, leavingDate, leavingTime, leavingTimeAMPM = @@durationMap[duration]
    set_date_time(@@startingPrefix, startingDate, startingTime, startingTimeAMPM)
    set_date_time(@@leavingPrefix, leavingDate, leavingTime, leavingTimeAMPM)
  end

  def set_date_time(prefix, date, time, ampm)
    @page.text_field(:name => "#{prefix + "Date"}").set(date)
    @page.text_field(:name =>  "#{prefix + "Time"}").set(time)
    @page.radio(:name => "#{prefix + "TimeAMPM"}",:value => ampm).set
  end

  def parking_costs
    @page.button(:name => 'Submit').click
    @actual_cost = @page.table.row(:text=> /ESTIMATED PARKING COSTS/).cell(:index => 1).span(:index => 0).text
  end
end


