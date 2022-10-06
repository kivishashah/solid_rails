class WithOcp < ActiveSupport::CurrentAttributes
  #This principle aims to extend a Class’s behaviour without changing the existing behaviour of that Class.
  #This is to avoid causing bugs wherever the Class is being used.
    class Chef
        def initialize(name)
          @name = name.capitalize
        end
      
        def cook
          "#{@name} is cooking a delicious meal"
        end
      end
      
      class ChefAndPainter < Chef
        def paint
          "#{@name} is painting the walls in the sitting room"
        end
    end
end