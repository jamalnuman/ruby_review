require_relative "./employee.rb"
require_relative "./reportable.rb"

module Actualize
    class Manager < Employee
    include Reportable
    attr_reader :employees #can not add a writer method for salary, cause then that will only give u access to manager's salary only and not the employee's salary 

    def initialize(input_options)
      super(input_options)
      @employees = input_options[:employees]
    end

    def give_all_raises
      #psuedo code
      #input: array 
      #output or effect: increase all employee's salary ..in this example we dont have a return moreso the result of this method will be an effect, which is salary increase
      #1 take employees in one at a time
      #2 increase salary for the individual employee 
      employees.each { |employee| employee.give_annual_raise } #using one line comments
    end

    # def fire_employee
    #   employees.each do |employee|
    #     employee.fire
    #   end
    # end

    def fire_employee
      employees.each { |employee| employee.active = "false" }
      employees.each(&:pink_slip)
    end


    end
  end