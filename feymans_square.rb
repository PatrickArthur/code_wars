#method that takes n and returns all the def count_squares(n)
  (1..n).map{ |n| n ** 2 }.inject(:+)
end
