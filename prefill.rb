# method that prefills and array of n with v values,
# if n is not a number or negative return invalid

def prefill(n, v)
  if (n =~ /\d/ || (n.is_a?Integer)) && n.to_i >= 0
    array = Array.new(n.to_i)
    array.each_index do |ind|
      array[ind] = v
    end
  else
    "#{n} is invalid"
  end
end

prefill(-2, 1)
prefill(3, 5)
prefill('3', 5)
prefill('xyz', 5)
