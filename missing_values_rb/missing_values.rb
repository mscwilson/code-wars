def missing_values(numbers)
  x = numbers.find { |n| numbers.count(n) == 1 }
  y = numbers.find { |n| numbers.count(n) == 2 }
  x * x * y
end
