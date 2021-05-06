def paint_letter_boxes(start_door, end_door)
  numbers =  (start_door..end_door).to_a.join
  ("0".."9").map { |i| numbers.count(i) }
end
