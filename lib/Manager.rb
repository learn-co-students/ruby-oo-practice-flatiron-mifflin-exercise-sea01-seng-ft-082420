class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age, employees = [])
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all.map{|m| m.department}
    end

    def hire_employee(name, salary)
        emp = Employee.new(name, salary, self)
        @employees << emp
    end

    def employees
        @employees
    end

    def self.average_age
        ages = []
        ages = (@@all.map{|m| m.age}.sum).to_f
        ave_age = ages / @@all.length.to_f
    end


end
