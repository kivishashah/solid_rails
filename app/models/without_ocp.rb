class WithoutOcp < ActiveSupport::CurrentAttributes
  # Classes should be open for extension, but closed for modification
  class Chef
    def initialize(name)
      @name = name.capitalize
      @description = 'cooking a delicious meal'
    end

    def cook
      "#{@name} is #{@description}"
    end
    
    attr_writer :description
    #Changing the current behaviour of a Class will affect all the systems using that Class.
    #If you want the Class to perform more functions,
    #the ideal approach is to add to the functions that already exist NOT change them.
  end
end