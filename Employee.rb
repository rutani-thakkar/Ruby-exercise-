class Employee

  def take_salary
    puts "Enter salary"
    @salary = gets
  end

  def display_salary_table
    total_salary = 0
    puts "January  February March April May June July August September October November December"
    3.times do
      12.times do
        total_salary = total_salary + @salary.to_i
        print "#{total_salary}" +"   "
      end
      puts
    end  
  end

  def find_month
    puts "Enter salary and amount"
    salary = gets
    amount =  gets
    month = amount.to_i/salary.to_i
    month = (month > 0 && month%12 == 0) ? 12 : month.to_i%12
    puts "Month number: #{month}"
  end
end
employee = Employee.new
employee.take_salary
employee.display_salary_table
employee.find_month
