class Employee
  attr_reader :manager, :name, :salary 
  @@all = []

  def initialize(name, salary, manager)
    @name = name 
    @salary = salary 
    @manager = manager 
    @@all << self 
  end 

  def manager_name
    self.manager
  end 

  def self.paid_over(num)
    self.all.select{|employee| employee.salary > num}
  end 

  def self.all
    @@all 
  end 

  def self.find_by_department(department)
    self.all.find {|employee| employee.manager.department == department}
  end 

  def tax_bracket
    self.class.all.select {|employees| ((self.salary - 1000.00 )..(self.salary + 1000)).include?(employees.salary)}
  end 

end

