arr = [3, 4, 5]
array = Array.new(8) { Array.new(1)}
arr.each_with_index do |val,ind|
  (ind % 2 != 0) ? array[val] = "*" : array[val] = 0
end

