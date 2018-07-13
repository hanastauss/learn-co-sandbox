class Person 
  attr_reader :name, :age
  
  def initialize(name)
    @name = name
  end 
  
  def age=(a)
    @age = a
  end
end

mike = Person.new('mike')
mike.age = 20
puts mike.age