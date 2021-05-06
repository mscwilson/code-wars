def palindrome?(num)
  length = num.to_s.length

  if length.even?
    first_half = num.to_s[0,length/2]
    second_half = num.to_s[length/2, length/2]
  else
    first_half = num.to_s[0, length/2]
    second_half = num.to_s[length/2 + 1, length/2]
  end
  first_half == second_half.reverse
end

# def special_step(num)
#   num + num.to_s.reverse.to_i
# end

def palindrome_chain_length(num)
  accumulator = 0
  while palindrome?(num) == false
    num += num.to_s.reverse.to_i
    accumulator += 1
  end
  accumulator
end
