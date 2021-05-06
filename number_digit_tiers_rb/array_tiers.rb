def create_array_of_tiers(num)
  nums = num.to_s
  (0..nums.length - 1).map { |range| nums[0..range] }
end
