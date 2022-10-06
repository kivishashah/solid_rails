
class WithIsp < ActiveSupport::CurrentAttributes
    #This principle aims at splitting a set of actions into smaller sets 
    #so that a Class executes ONLY the set of actions it requires.

    class Robot
        def initialize
        @no_of_arms = 2
        end
    
        def spin_around
        'I can spin around'
        end
    
        def rotate_arm
        "I am rotating my #{@no_of_arms} arms"
        end
    end
  
    class PainterRobot < Robot
        def paint_house
        "Painting the house with my painting brush arm"
        end
    end
  
    class RadioRobot < Robot
        def initialize
        @no_of_antennas = 4
        end
    
        def search_for_stations
        "#{@no_of_antennas} antennas connecting to the closest radio station"
        end
    end
end
  
  