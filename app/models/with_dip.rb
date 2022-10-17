class WithDip < ActiveSupport::CurrentAttributes
  #This principle aims at reducing the dependency of a high-level Class on the low-level Class .
  #by introducing an interface.
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
    def initialize(tool)
      @tool = tool
    end
  
    def paint_house
      "Painting the house with my #{@tool} arm"
    end
  end
end