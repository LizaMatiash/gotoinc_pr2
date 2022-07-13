# frozen_string_literal: true

massive = [1, 1]

loop do
  break if massive[-1] + massive[-2] > 100

  massive << massive[-1] + massive[-2]
end

puts massive
