class User
  
  attr_accessor :user_name
  attr_accessor :password
  attr_accessor :birthday
  attr_accessor :email
  
  def initialize(user_name,password,birthday,email)
    @user_name=user_name
    @password=password
    @birthday=birthday
    @email=email
  end
  
  def set_password
    puts "What would you like your password to be?"
    new_pass = gets.chomp.gsub(/[abcdefghijklmonpqrstuvwxyz]/,'*')
    @password=new_pass.gsub(/[abcdefghijklmonpqrstuvwxyz]/,'*')
  end
  
  def display_info
    puts "Would you like to see all of your information?"
    answer = gets.chomp.downcase
      if answer == "yes"
        puts "username: #{@user_name}"
        puts "password:" + "#{@password}".gsub(/[abcdefghijklmonpqrstuvwxyz]/,'*')
        puts "birthday: #{@birthday}"
        puts "email: #{@email}"
      else
        puts "hope you don't get locked out"
      end
    end
  
end

emma=User.new("emma","hello","6/9/1999","hello@gmail.com")
puts emma.password
emma.set_password
puts emma.password

emma.display_info