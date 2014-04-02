class ParkCalcPage
  attr :page

  def initialize(page_handle)
     @page = page_handle
     @page.goto"http://www.shino.de/parkcalc"
  end

  def select_parking_lot(parking_lot)
    @page.select_list(:id,'ParkingLot').select(parking_lot)
  end

  def enter_parking_duration(duration)
    case duration
      when '30'
        @page.text_field(:name => "StartingDate").set("4/01/14")
        @page.text_field(:name => "StartingTime").set("8:00")
        @page.radio(:name => "StartingTimeAMPM", :value => "AM").set
        @page.text_field(:name => "LeavingDate").set("4/01/14")
        @page.text_field(:name => "LeavingTime").set("8:30")
        @page.radio(:name => "LeavingTimeAMPM", :value => "AM").set
    end
  end

  def parking_costs
    @page.button(:name => 'Submit').click
    @actual_cost = @page.table.row(:text=> /ESTIMATED PARKING COSTS/).cell(:index => 1).span(:index => 0).text
  end
end