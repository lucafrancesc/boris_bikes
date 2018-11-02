class Bike

  def initialize (broken = false)
    @broken = broken
  end

  def working?(status = "yes")
    @broken = true if status == "no"
  end

  def bike_status
    @broken ? "Broken" : "Working"
  end

end
