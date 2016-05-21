require_relative('hourly_payable')

class HourlyEmployee < Employee
    include HourlyPayable


    def initialize(name, email, hourly_rate, hours_worked)
        # @name = name
        # @email = email
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	calc_salary
    end
end

# @hours_worked * @hourly_rate
