class WithoutSrp < ActiveSupport::CurrentAttributes
  #we could add these functionalities to a single class,
  #but this approach causes unwanted dependency among these functionalities

  #A class should have one, and only one reason to change

  #A class should have a single responsibility

  #If a Class has many responsibilities, it increases the possibility of bugs
  def initialize(name)
    @name = name.capitalize
  end
    
  attr_reader :name
  
  def cook
    "On it. #{name} this user is cooking your favorite food"
  end
    
  def garden
    "#{name} this user is planting new flowers in the garden"
  end

  def paint
    "#{name} this user is painting the walls in the sitting room"
  end

  def drive
    "#{name} this user is driving you to the airport"
  end
  # If a Class has many responsibilities, it increases the possibility of bugs
  #because making changes to one of its responsibilities, could affect the other ones without you knowing.
end