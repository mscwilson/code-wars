class StringMix

  attr_reader :shared_letters

  def lowercase_count(string)
    letters = Hash.new(0)
    string.chars.each do |char|
      next if char.upcase == char
      letters[char] += 1
    end
    letters
  end

  def mix(s1, s2)
    s1_counts = lowercase_count(s1)
    s2_counts = lowercase_count(s2)

    @results = []

    @shared_letters = (s1_counts.keys + s2_counts.keys).uniq.sort

    @shared_letters.each do |letter|
      if (s1_counts[letter] == s2_counts[letter]) && s1_counts[letter] > 1
        @results << "=:#{letter * s1_counts[letter]}"
      elsif (s1_counts[letter] > s2_counts[letter]) && s1_counts[letter] > 1
        @results << "1:#{letter * s1_counts[letter]}"
      elsif (s1_counts[letter] < s2_counts[letter]) && s2_counts[letter] > 1
        @results << "2:#{letter * s2_counts[letter]}"
      end
    end
    results_arranger(@results).join("/")
  end

  def results_arranger(list)
    separated = []
    list.sort_by { |str| str.length }.reverse.each_with_index do |x, i|
      if i == 0
        separated << [x]
        next
      end
      if x.length == separated[-1][0].length
        separated[-1] << x
      else
        separated << [x]
      end
    end
    separated.each { |x| x.sort! }
  end

end


# Not as a class:

def mix(s1, s2)
  s1_counts = lowercase_count(s1)
  s2_counts = lowercase_count(s2)
  shared_letters = (s1_counts.keys + s2_counts.keys).uniq.sort
  results = []
  shared_letters.each do |letter|
    if (s1_counts[letter] == s2_counts[letter]) && s1_counts[letter] > 1
      results << "=:#{letter * s1_counts[letter]}"
    elsif (s1_counts[letter] > s2_counts[letter]) && s1_counts[letter] > 1
      results << "1:#{letter * s1_counts[letter]}"
    elsif (s1_counts[letter] < s2_counts[letter]) && s2_counts[letter] > 1
      results << "2:#{letter * s2_counts[letter]}"
    end
  end
  results_arranger(results).join("/")
end

def lowercase_count(string)
  letters = Hash.new(0)
  string.chars.each do |char|
    next if char.upcase == char
    letters[char] += 1
  end
  letters
end

def results_arranger(list)
  separated = []
  list.sort_by { |str| str.length }.reverse.each_with_index do |x, i|
    if i == 0
      separated << [x]
    elsif x.length == separated[-1][0].length
      separated[-1] << x
    else
      separated << [x]
    end
  end
  separated.each { |x| x.sort! }
end
