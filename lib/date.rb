require 'date'

class DateCalculator
  def initialize
    @d = Time.now
  end

  def print_date
     "Today's date is #{@d.strftime('%d %b')}"
  end
end

# take user input
# if date after today, append this year to input, calculate days until
# if date before today, append next year to input, calculate days until