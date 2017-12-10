class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    fail 'Plane is not in the air' if !plane.flying
    plane.landed
    @hangar.push(plane)
  end

  def take_off(plane)
    if @hangar.length > 0
      if @hangar.include? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        plane.taken_off
        return plane
      else
        return "Error: plane not in hangar"
      end
    else
      return "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      "There is 1 plane in the hangar"
    else
      "There are #{@hangar.length} planes in the hangar"
    end
  end
end

class Plane
  attr_reader :flying

  def initialize
    @flying = false #state to track plane status
  end

  def taken_off
    @flying = true
  end
  def landed
      @flying = false
  end
end


# require './airport'
# airport = Airport.new
# plane = Plane.new
# plane.taken_off #plane initializes on ground - need to set as flying to allow
# to land in airport
# airport.land(plane) - plane should add to hanger - flying set to false
# airport.hangar_report - include plane
# plane2 = Plane.new
# plane2.taken_off
# airport.land(plane2) - flying set to false - plane added to hangar array
# airport.hangar_report - 2 planes in hangar
# airport.take_off(plane) - plane no longer in hangar - flying true
# airport.take_off(plane) - error - plane not in hangar
# airport.take_off(plane2) - plane no longer in hangar - flying true
# airport.hangar_report - 0 planes in hangar
