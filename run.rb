require_relative "lib/Manager.rb"
require_relative "lib/Employee.rb"
require 'pry'


#Test your code here
bob = Manager.new("Bob", "Printing Press", 26)
tina = Manager.new("Tina", "Accounting", 40)


e1 = Employee.new("Anna", 45000, bob)
e2 = Employee.new("Tom", 29000, bob)
e3 = Employee.new("Dina", 30000, tina)

binding.pry
puts "done"
