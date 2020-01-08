#GENERALLY SPEAKING, INSTANCE VARAIBLES HOLD ATTRIBUTES AND NOT BEHAVIORS.
# lamp = {:price => 100, :age => "new", :quantity => 5}
#lamp_1 = {price: 100, age: "new", quantity: 5}

# table = {:quality => "good", :origin => "USA", :quantity => 5}
#table_1 = {quality: "good", origin: "USA", quantity: 5}

# couch = {:set => "false", :price => 100, :quantity => 10}
#couch_1 = {set: "false", price: 100, quantity: 10}


# class Store
#   attr_reader :price, :age #remember no commas at the end of line as in (attr_reader :price, :age,) 
#   attr_writer :quantity


#   def initialize(price, age, quantity)
#     @price = price
#     @age = age
#     @quantity = quantity
#   end

  # def print_info
  #   puts "The price of this is #{price} and is a considered #{age} and we only have #{@quantity} in stock."
  #   #the quantity aspect is a WRITER method, so i would have to use the instance variable to use it in string interploatation, where as 
  #   #the other two are only READER methods and therefore can be passed in as method names instead of the instance variables. 
  # end

  # def price
  #   @price
  # end

  # def age 
  #   @age 
  # end

  # def quantity=(value)
  #   @quantity = value
  # end

# end

# store_1 = Store.new(1000, "new", 5)
# p store_1
# store_1.print_info
# store_1.quantity = 10
# p store_1
# store_1.print_info



# puts "The price of the lamp is #{lamp[:price]}. It is a brand #{lamp[:age]} model and we only have #{lamp[:quantity]} in stock."
# puts "The price of the lamp is #{lamp_1[:price]}. It is a brand #{lamp_1[:age]} model and we only have #{lamp_1[:quantity]} in stock."

#classes have two qualities, such as attributes and behaviors. Behaviors change attributes.
# class Employee

#   def initialize(input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name =  input_last_name
#     @salary = input_salary
#     @active = input_active
#   end

#   def print_info
#     puts "#{@first_name} #{@last_name} makes #{@salary} a year."
#   end

#   def first_name
#     @first_name 
#   end

#   def last_name
#     @last_name
#   end

#   def salary
#     @salary
#   end

#   def active
#     @active
#   end

#   def first_name=(new_first_name)
#     @first_name = new_first_name
#   end

#   def give_annual_salary
#     @salary *= 1.05
#   end

# end

# employee_1 = Employee.new("Han", "Solo", 70000, true)
# employee_2 = Employee.new("Jamal", "Numan", 80000, true)



# employee_1.print_info
# employee_2.print_info

# employee_2.give_annual_salary #remember this will not print cause we did not print in the method. so this will work behind the scene and the print_info method will have access to salary and then print the value of the raise. 
# employee_2.print_info

# p employee_2.first_name
# # p employee_2.last_name
# # p employee_2.active
# # p employee_2.salary
# employee_2.first_name = "Bob"
# p employee_2.first_name

#--------------------------JAN 08 2020-------------------------

class Employee

  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name =  input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def first_name
    @first_name 
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active
    @active
  end

  def first_name=(new_first_name)
    @first_name = new_first_name
  end

  def give_annual_salary
    @salary *= 1.05
  end

end

employee_1 = Employee.new(
                            first_name: "Han", 
                            last_name: "Solo", 
                            salary: 70000, 
                            active: true)
employee_2 = Employee.new(first_name: "Jamal", 
                          last_name: "Numan", 
                          salary: 80000, 
                          active: true)
p employee_1
p employee_2
# p employee_1.first_name
# p employee_1.last_name
# p employee_1.active
# p employee_1.salary
# employee_1.first_name = "Bob"
# p employee_1.first_name


class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    #super ({first_name: "Billy", last_name: "Ford"})
    @employee = input_options[:employees]
  end
  def send_report
    puts "Sending email...."
    puts "Email sent"
  end

end

manager = Manager.new(
                      first_name: "Josh",
                      last_name: "Nixon",
                      salary: 90000,
                      active: true,
                      employees: [employee_1, employee_2])

#employee_1.print_info
manager.send_report
#employee_2.print_info
p manager

#**************************************************

# class Store
#   attr_reader :price, :age #remember no commas at the end of line as in (attr_reader :price, :age,) 
#   attr_writer :quantity


#   def initialize(input)
#     @price = input[:price]
#     @age = input[:age]
#     @quantity = input[:quantity]
#   end

#   def print_info
#     puts "The price of this is #{price} and is a considered #{age} and we only have #{@quantity} in stock."
#     #the quantity aspect is a WRITER method, so i would have to use the instance variable to use it in string interploatation, where as 
#     #the other two are only READER methods and therefore can be passed in as method names instead of the instance variables. 
#   end

#   def price
#     @price
#   end

#   def age 
#     @age 
#   end

#   def quantity=(value)
#     @quantity = value
#   end

# end

# store_1 = Store.new(price: 1000, age: "new", quantity: 5)
# p store_1
# store_1.print_info
# store_1.quantity = 10
# p store_1
# store_1.print_info