# frozen_string_literal: true

massive = [1, 1]

loop do
  break if massive[-2..].sum > 100

  massive << massive[-2..].sum
end

puts massive
