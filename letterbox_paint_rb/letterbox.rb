def paint_letter_boxes(start_door, end_door)
  counts = Hash.new(0)
  (start_door..end_door).each do |door|
    door.to_s.chars.each { |digit| counts[digit.to_i] += 1 }
  end
  Array.new(10) { |i| counts[i] }

end
