class College
  
  attr_accessor :name
  
  attr_accessor :student_pop
  
  attr_accessor :mascot
  
  attr_accessor :type
  
  def initialize(name, student_pop, mascot, type)
    @name = name 
    @student_pop = student_pop
    @mascot = mascot 
    @type = type
  end
  # def name # GETTER method (retrieves value of instance variable)
  #   @name
  # end 
  # def name=(new_name) # SETTER method - sets value of instance value 
  #   @name=new_name
  # end
end

college_one = College.new("The University of Georgia",2300, "Georgia Bulldawgs","public")

puts college_one.name
