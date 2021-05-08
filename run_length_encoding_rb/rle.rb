def encode(letters)
  letters.chars.each_with_object([]) do |letter, arr|
    p letter
    if arr.empty? || arr.last[1] != letter
      arr << [0]
    end
    arr.last[0] += 1
    arr.last << letter
  end.flatten.join.squeeze

end
