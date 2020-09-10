class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary = nil, manager_name = nil)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        paid_emps = []
        @@all.each do |a|
            if a.salary > num
                paid_emps << a.name
            end
        end
        paid_emps.uniq
    end

    def self.find_by_department(department)
        man = Manager.all.find{|m| m.department == department}
        emp = @@all.find{|e| e.manager_name == man}
        emp.name
    end

    def tax_bracket
        emps = []
        @@all.each do |e|
            if e.name != self.name
                if e.salary <= self.salary + 1000 and (e.salary < self.salary) == false
                    emps << e.name
                elsif e.salary >= self.salary - 1000 and (e.salary > self.salary) == false
                    emps << e.name
                end
            end
        end
        emps.uniq
    end

end
