def missing_values(numbers)
  mapped = (0...numbers.uniq.length).map do |i|
    [numbers.uniq[i], numbers.count(numbers.uniq[i])]
  end
  x = mapped.find { |pair| pair[1] == 1 }.first
  y = mapped.find { |pair| pair[1] == 2 }.first

  x * x * y
end
