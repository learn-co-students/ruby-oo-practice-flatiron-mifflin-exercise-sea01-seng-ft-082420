require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Jackson", "Getting Lit", 25) 
m2 = Manager.new("Bub", "Coding", 35) 
# (name, department, age, employees = [])
 e1 = Employee.new("Patrick", 9001)
e2 = Employee.new("Bob", 90)
e3 = Employee.new("Billy", 9009)
e4 = Employee.new("Nub", 10)
e5 = Employee.new("Fub", 50)

m1.hire_employee(e1.name, e1.salary)
m1.hire_employee(e2.name, e2.salary)
m1.hire_employee(e3.name, e3.salary)
m2.hire_employee(e4.name, e4.salary)
m2.hire_employee(e5.name, e5.salary)
# (name, salary, manager_name)

binding.pry
puts "done"
