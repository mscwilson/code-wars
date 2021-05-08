def encode(letters)
  letters.chars.each_with_object([]) do |letter, arr|
    arr << [0] if arr.empty? || arr.last[1] != letter
    arr.last[0] += 1
    arr.last << letter
  end.flatten.join.squeeze
end

def decode(sequence)
  sequence.scan(/\d+[A-Z]/).map do |pair|
    pair[-1] * pair.scan(/\d+/)[0].to_i
  end.join
end
