class WithoutLsp < ActiveSupport::CurrentAttributes
  #if class B is subtype of class A, then we should be able to replace obj of A with B without breaking the behaviour of prg.
  #subclass should extend the capablity of parent class not narrow it down.
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