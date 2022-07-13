# frozen_string_literal: true

massive = []

(10..100).each do |x|
  massive << x if (x % 5).zero?
end

puts massive
