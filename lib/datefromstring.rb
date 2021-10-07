require 'dates_from_string'
require 'date'

text = "3 July 2021"        # parsing text
key_words = [' ']           # you can define special separator
options = {
  date_format: :usa,         # year,day,month by default year,month,day
  ordinals: ['nd', 'st', 'th']                                  # a string list that might accompany a day, default none
}                               
dates_from_string = DatesFromString.new(key_words)     # define DatesFromString object
puts dates_from_string.get_structure(text)                           # parsing text

puts Date.parse(text)