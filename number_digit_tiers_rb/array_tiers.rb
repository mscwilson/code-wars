def create_array_of_tiers(num)
  digits = num.to_s.chars
  digits.map!.with_index { |digit, i| i == 0 ? digit : digits[i - 1] + digit }
end
