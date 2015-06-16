
class Airplane
  def initialize(type, wing_load, horsepower)
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @engine_running = false
    @flying = false
  end

def land
  if @engine_running == false
    "airplane not started"
  elsif @flying == false
    "airplane grounded"
  else
    @flying = false
    'airplane landed'
  end
end

  def takeoff
    if @engine_running == true
      @flying = true
       'rotate'
    else
      'plane not started, please start'
    end
  end

  def horsepower
    @horsepower
  end

  def wing_load
    @wing_load
  end

  def type
    @type
  end

  def start
    if @engine_running == true
      "already started"
    else
      @engine_running = true
      "started"
    end
  end
end
#
