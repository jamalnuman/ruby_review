module StoreFront
  class Store
    attr_reader :price, :age #remember no commas at the end of line as in (attr_reader :price, :age,) 
    attr_writer :quantity


    def initialize(input)
      @price = input[:price]
      @age = input[:age]
      @quantity = input[:quantity]
    end

    def print_info
      puts "The price of this is #{price} and is a considered #{age} and we only have #{@quantity} in stock."
      #the quantity aspect is a WRITER method, so i would have to use the instance variable to use it in string interploatation, where as 
      #the other two are only READER methods and therefore can be passed in as method names instead of the instance variables. 
    end
  end
end

# class Store
#   attr_reader :price, :age #remember no commas at the end of line as in (attr_reader :price, :age,) 
#   attr_writer :quantity


#   def initialize(price, age, quantity)
#     @price = price
#     @age = age
#     @quantity = quantity
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