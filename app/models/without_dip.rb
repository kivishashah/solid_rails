class WithoutDip < ActiveSupport::CurrentAttributes
  # High-level modules should not depend on low-level modules. Both should depend on the abstraction.
  # Abstractions should not depend on details. Details should depend on abstractions.
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
end