class User
 
  attr_accessor :name, :email   #this goes the code listed on the following 7 lines
          # def get_name
            # @name
          # end
  
          # def set_name=(name)
            # @name = name
          # end
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def run
      puts "Hey I'm running"
  end
  

end

user = User.new("Charlie", "charlie@email.com")
puts "The user name is #{user.name} and email is #{user.email}"
user.name = "Josie"
user.email = "josie@example.com"
puts "The new name is #{user.name} and email is #{user.email}"



# puts user.get_name

# user.set_name=("Jenny")
# puts user.get_name