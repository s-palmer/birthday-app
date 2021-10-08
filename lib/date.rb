require 'date'

class DateCalculator
  attr_reader :user_birthday, :diff, :greetz

  def initialize(day, month)
    @d = Date.today
    @year = @d.year
    @user_birthday = "#{day} #{month} #{@year}"
  end

  # def print_date
  #    "Today's date is #{@d.strftime('%d %b')}"
  # end

  # def input_birthday(day, month)
  #   @user_birthday = "#{day} #{month} #{@year}"
  # end

  def parse_date
    @format_date = Date.parse(user_birthday)
  end

  def calc_diff
    var = (@format_date - @d).to_i
    p var
    if var < 0
      @diff = 365 + var
      @greetz = "You have to wait #{@diff} days until your next birthday"
    elsif var == 0
      @diff = 0
      @greetz = "HAPPY BIRTHDAY!"
    else
      @diff = var
      @greetz = "You have to wait #{@diff} days until your next birthday"
    end
  end
end

# take user input
# if date after today, append this year to input, calculate days until
# if date before today, append next year to input, calculate days until