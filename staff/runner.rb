require_relative "./employee.rb"
require_relative "./manager.rb"
require_relative "./intern.rb"
employee_1 = Actualize::Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Lando", 
                          last_name: "Calrissian", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Actualize::Intern.new

p employee_1
p employee_2
puts
p manager
manager.give_all_raises
employee_1.print_info
employee_2.print_info
puts
#manager.fire_employee
puts
p employee_1
p employee_2
 

intern.send_report
manager.send_report