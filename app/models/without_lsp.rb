class WithoutLsp < ActiveSupport::CurrentAttributes
  #If S is a subtype of T, then objects of type T in a program may be replaced with,
  #objects of type S without altering any of the desirable properties of that program.
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
    undef_method :serve_coffee
  end
  #When a child Class cannot perform the same actions as its parent Class, this can cause bugs
end