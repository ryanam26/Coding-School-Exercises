require_relative('yearlypayable')


class SalariedEmployee < Employee
    include YearlyPayable


    def initialize(name, email, yearly_salary)
        # @name = name
        # @email = email
        super(name, email)
        @yearly_salary = yearly_salary
        
    end

    def calculate_salary
      #returns the hours worked * hourly_rate 
        calc_salary
    end
end

# @yearly_salary / 52