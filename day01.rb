# data = File.read('day01-sample.txt')

data = File.read('day01.txt')
group_numbers_to_arrays = data.split(/\n\n/).map { |str| str.split(/\n/).map(&:to_i) }

# day1-1
p group_numbers_to_arrays.map { |ary| ary.reduce(:+) }.max

# day1-2
p group_numbers_to_arrays.each_with_object({})
  .with_index { |(ary, hash), idx| hash[idx] = ary.reduce(:+) } #=> {0=>6000, 1=>4000, 2=>11000, 3=>24000, 4=>10000}
  .sort_by { |k, v| -v}
  .first(3)
  .map(&:last)
  .sum
