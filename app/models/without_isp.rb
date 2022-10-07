class WithoutIsp < ActiveSupport::CurrentAttributes
  # Clients should not be forced to depend on methods that they do not use.
  #A Class should perform only actions that are needed to fulfil its role.
  # Any other action should be removed completely or moved somewhere else if it might be used by another Class in the future.
  class Robot
    def initialize
      @no_of_arms = 2
      @no_of_antennas = 4
    end
      
    def spin_around
      'I can spin around'
    end
      
    def rotate_arm
      "I am rotating my #{@no_of_arms} arms"
    end
      
    def paint_house
      "Painting the house with my painting brush arm"
    end
      
    def search_for_stations
      "#{@no_of_antennas} antennas connecting to the closest radio station"
    end
  end
      
  class PainterRobot < Robot
  end
  
  class RadioRobot < Robot
  end
end