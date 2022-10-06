class WithSrp < ActiveSupport::CurrentAttributes

    #This principle aims to separate behaviours so that if bugs arise as a result of your change, 
    #it won’t affect other unrelated behaviours.
    class Chef
        def initialize(name)
        @name = name.capitalize
        end
    
        attr_reader :name
    
        def cook
        "On it. #{name} is cooking your favorite food"
        end
    end
    
    class Gardener
        def initialize(name)
        @name = name.capitalize
        end
    
        attr_reader :name
    
        def garden
        "#{name} is planting new flowers in the garden"
        end
    end
    
    class Painter
        def initialize(name)
        @name = name.capitalize
        end
    
        attr_reader :name
    
        def paint
        "#{name} is painting the walls in the sitting room"
        end
    end
    
    class Driver
        def initialize(name)
        @name = name.capitalize
        end
    
        attr_reader :name
    
        def drive
        "#{name} is driving you to the airport"
        end
    end
end
