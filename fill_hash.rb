# frozen_string_literal: true

a = %w[a e u i o y].each_with_object({}) { |v, h| h[v] = ('a'..'z').to_a.index(v) + 1 }
puts a

