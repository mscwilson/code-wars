def remove_vowels2(string)
  vowels = %w[a e i o u A E I O U]
  result = ""
  string.chars.each_with_index do |char, index|
    if !vowels.include? char
      result << char
    end
  end
  result
end

def remove_vowels(string)
  vowels = %w[a e i o u A E I O U]
  string.chars.each_with_object("").with_index do |(char, string), index|
    string << char if !vowels.include? char
  end
end
