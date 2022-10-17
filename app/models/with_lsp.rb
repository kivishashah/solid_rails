class WithLsp < ActiveSupport::CurrentAttributes    
  #This principle aims to enforce consistency,
  #so that the parent Class or its child Class can be used in the same way without any errors.
  class Server
    def initialize(name)
      @name = name.capitalize
    end
  
    attr_reader :name

    def serve_coffee
      "I am #{name}. Here is your coffee"
    end

    def serve_water
      "I am #{name}. Here is your water"
    end
  end
  
  class ServerChild < Server
    def serve_coffee
      "I am #{name}. Here is your cappucino"
    end
  end
end