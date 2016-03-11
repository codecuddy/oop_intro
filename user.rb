module Destructable
  def destroy(anyobject)
    puts "Will destroy the object!"
  end
end

class User
  include Destructable
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
  
  def self.id_yourself
    puts "This is a class method."
  end

end

class Buyer < User
  def run
      puts "I'm in buyer class now"
  end
end

class Seller < User

end

class Admin < User
    
end

user = User.new("Charlie", "charlie@email.com")
puts "The user name is #{user.name} and email is #{user.email}"
user.name = "Josie"
user.email = "josie@example.com"
puts "The new name is #{user.name} and email is #{user.email}"

buyer1 = Buyer.new("Patrick", "pat@email.com")
buyer1.run

seller1 = Seller.new("Henry", "hank@email.com")
seller1.run

admin1 = Admin.new("Peter", "pete@email.com")
admin1.run

puts Buyer.ancestors

#User.id_yourself
user= User.new("francis", "frank@email.com")
user.destroy("myname")


# puts user.get_name

# user.set_name=("Jenny")
# puts user.get_name