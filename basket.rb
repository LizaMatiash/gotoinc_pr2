# frozen_string_literal: true

message = {
  first: 'Enter name of product (Enter stop to finish): ',
  second: 'Enter price of product: ',
  third: 'Enter entity of product: ',
  error_input: 'Wrong input. Try again: '
}

def input_check(message)
  a = nil
  loop do
    a = gets.chomp.to_f
    break if a.positive?

    puts message[:error_input]
  end
  a
end

empty_hash = {}

loop do
  puts message[:first]
  name = gets.chomp
  break if name.to_s == 'stop'

  puts message[:second]
  price = input_check(message)
  puts message[:third]
  entity = input_check(message)

  empty_hash[name] = { price: price, entity: entity }
end

# вивід всіх продуктів
empty_hash.each do |name, values|
  puts "#{name}: #{values[:price]}$  Sum: #{values[:price] * values[:entity]}$"
end

full_price = 0
# обрахунок всієї суми
empty_hash.each do |_name, values|
  full_price += values[:price] * values[:entity]
end

puts "Your total check is #{full_price}"
