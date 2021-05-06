def create_array_of_tiers(num)
  digits = num.to_s.chars

  digits.map!.with_index do |digit, i|
    # if i == 0
    #   digit
    # else
      digits[i - 1] + digit
    # end
  end

  digits.map_with_index do |digit, i|
    if i == 0
      digit
    else
      digits[i - 1] + digit
    end
  end
  p digits

  result
end
