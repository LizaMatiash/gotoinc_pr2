# frozen_string_literal: true

message = {
  enter_day: 'Enter day(1-30): ',
  enter_month: 'Enter month(1-12): ',
  enter_year: 'Enter year(xxxx): ',
  error_input: 'Wrong input. Try again: '
}

def input_check(message)
  a = nil
  loop do
    a = gets.chomp.to_i
    break if a.positive?

    puts message[:error_input]
  end
  a
end

day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
puts message[:enter_day]
day = input_check(message)
puts message[:enter_month]
month = input_check(message)
puts message[:enter_year]
year = input_check(message)

if (year % 4).zero?
  if (year % 100).zero?
    day_in_month[2] = 29 if (year % 400).zero?
  else
    day_in_month[2] = 29
  end
end

number_of_day = 0
month.times { |e| number_of_day += day_in_month[e] }
number_of_day += day
puts "Day number is #{number_of_day}"
