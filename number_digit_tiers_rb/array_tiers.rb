def create_array_of_tiers(num)
  digits = num.to_s.chars
  result = []
  digits.each do |digit|
    if result.empty?
      result << digit
    else
      result << result.last + digit
    end
  end
  result
end
