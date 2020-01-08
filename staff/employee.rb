# employee_1 = ["Han", "Solo", 70000, true]
# employee_2 = ["Lando", "Calrissian", 80000, true]
# #local variable are always in snake case as seen in employee_1 and employee_2. Remember the difference btw local, global ($), instance (@) and class (@@) varaibles. Plus constants are in caps and defined at the top of the page. If you created a method, employee 1 and employee 2 would still not be accessible within the method cause they are local variables, just like the variables in the method are not accessible outhside the method. 

# puts employee_1[0] + ' ' + employee_1[1] + " makes " + employee_1[2].to_s + " a year."

# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]} a year."

#to debug as a coder..use p as opposed to puts. 

employee_1 = {"first_name" => "Han", "last_name" => "Solo", "salary" => 70000, "active" => true}

puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]} a year."

#any objects can be keys within a hash..such as numbers or strings, like in the above example. 

#if you have a symbol as a key but refer to it as a string, you will NOT break the code, but will get back a 'nil' value. See below:
employee_1 = {:first_name => "Han", "last_name" => "Solo", "salary" => 70000, "active" => true}
puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]} a year."


#but remember the current way to write a hash is as follows: 
employee_1 = {first_name: "Han", last_name: "Solo", salary: 70000, active: true}
puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."



