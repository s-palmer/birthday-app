require 'date'

class DateCalculator
  attr_reader :user_birthday

  def initialize
    @d = Time.now
    @year = @d.year
  end

  def print_date
     "Today's date is #{@d.strftime('%d %b')}"
  end

  def input_birthday(day, month)
    @user_birthday = "#{day} #{month} #{@year}"
  end

  def parse_date
    @format_date = Date.parse(user_birthday)
    # .strftime('%d/%m/%Y')
  end

  def calc_diff
    date = Time.now
    # strftime('%d/%m/%Y')
    diff = date - @format_date
  end
end

# take user input
# if date after today, append this year to input, calculate days until
# if date before today, append next year to input, calculate days until